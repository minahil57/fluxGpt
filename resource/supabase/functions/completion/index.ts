import {serve} from "https://deno.land/std@0.132.0/http/server.ts";
import {openai} from "../_utils/open_ai.ts";

console.log("OpenAI handler up and running!");

const model = "text-davinci-003"
const maxTokens = 500
const temperature = 0.9
const topP = 1
const frequencyPenalty = 0.0
const presencePenalty = 0.6

serve(async (req) => {
    try {
        // Get prompt from body
        const body = await req.json();
        const prompt = body.prompt;
        const stop = body.stop

        // Call open ai to get the response
        const response = await openai.createCompletion({
            prompt: prompt,
            model: model,
            max_tokens: maxTokens,
            temperature: temperature,
            top_p: topP,
            frequency_penalty: frequencyPenalty,
            presence_penalty: presencePenalty,
            stop: stop
        })

        const json = await response.json();


        const responseForClient = {
            completion: json.choices[0].text.trim()
        }

        return new Response(JSON.stringify(responseForClient), {
            headers: {"Content-Type": "application/json"},
            status: 200,
        });
    } catch (error) {
        return new Response(JSON.stringify(error), {
            headers: {"Content-Type": "application/json"},
            status: 400,
        });
    }
});
