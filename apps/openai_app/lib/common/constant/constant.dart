import '../../features/text_generate/entities/sub_use_case.dart';
import '../../features/text_generate/entities/text_use_case.dart';

class Constant {
  static const supabaseUrl = 'https://rtkrqvtslujdzjxhjocu.supabase.co';
  static const supabaseAnonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0a3JxdnRzbHVqZHpqeGhqb2N1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzU5OTI5MzMsImV4cCI6MTk5MTU2ODkzM30.qKtfNHhL6AKqGsmDfjMq90bIWIWlnN3UVgnwcLF_vGY';

  static const lightIcon = 'https://i.imgur.com/Ix2e6Ye.png';

  static const darkIcon = 'https://i.imgur.com/Ix2e6Ye.png';

  static const chatBackgroundImage = 'https://i.imgur.com/mvllC9F.png';

  // To define your context. You can fill in the main function/task
  // that the bot takes on to make sure the context you give the bot will not be skewed.
  // It will not show on the screen
  static const roleplayIntroduction = '';

  // The bot will show this message on the screen before you chat for the first time
  static const welcomeMessage = 'Hello! How can I assist you today?';

  static const testUseCases = <TextUseCase>[
    TextUseCase(
      name: 'Blog Idea & Outline',
      subUseCases: [
        SubUseCase(
          name: 'About',
          description: 'Writing Assistant',
        ),
      ],
    ),
    TextUseCase(
      name: 'Blog Section Writing',
      subUseCases: [
        SubUseCase(
          name: 'Section Topic',
          description: 'Role of Al Writers in the Future of Copy-writing',
        ),
        SubUseCase(
          name: 'Section Keywords',
          description: 'Writer, blog generator, best writing software',
        ),
      ],
    ),
    TextUseCase(
      name: 'Business Ideas',
      subUseCases: [
        SubUseCase(
          name: 'Interest',
          description: 'Marketing Saas',
        ),
        SubUseCase(
          name: 'Skills',
          description: 'Copy-writing, marketing, product development, AI',
        ),
      ],
    ),
    TextUseCase(
      name: 'Cover letter',
      subUseCases: [
        SubUseCase(
          name: 'Job Role',
          description: 'Digital Marketer',
        ),
        SubUseCase(
          name: 'Job Skills',
          description: 'Blog writing, SEO, social media, email',
        ),
      ],
    )
  ];
}
