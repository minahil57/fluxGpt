import {serve} from "https://deno.land/std@0.132.0/http/server.ts";
import {openai} from "../_utils/open_ai.ts";

console.log("OpenAI handler up and running!");
serve(async (req) => {
    try {

        const body = await req.json()
        const prompt = body.prompt
        const size = body.image_size
        const style = body.style
        const medium = body.medium
        const artist = body.artist
        const mood = body.mood
        const detail = body.detail
        const numImages = body.number_of_images

        let effectivePrompt = ""

        if (detail != null) {
            effectivePrompt = detail
        }

        if (style != null) {
            effectivePrompt = effectivePrompt + " " + style
        }

        if (medium != null) {
            effectivePrompt = effectivePrompt + " " + medium
        }

        if (artist != null) {
            effectivePrompt = effectivePrompt + " of " + artist
        }

        if (mood != null) {
            effectivePrompt = effectivePrompt + " in " + mood + " mood"
        }

        if (prompt != "") {
            effectivePrompt = effectivePrompt + " about " + prompt
        }

        // Call open ai to get the response
        const response = await openai.createImage({
            size: size,
            prompt: effectivePrompt,
            response_format: "url",
            n: numImages ?? 2,
        })

        const json = await response.json();

        return new Response(JSON.stringify(json), {
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
