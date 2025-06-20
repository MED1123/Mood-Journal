import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'services/gpt_service.dart';

final apiKey = dotenv.env['OPENROUTER_API_KEY'];

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MoodJournalApp());
}

class MoodJournalApp extends StatelessWidget {
  const MoodJournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mood Journal',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  void _submitEntry() async {
    final text = _controller.text;
    if (text.isNotEmpty) {
      print('Wpis dziennika: $text');

      try {
        final gptResponse = await GptService.analyzeMood(text);
        print('Analiza GPT: $gptResponse');
        // TODO: Zapisz do bazy
      } catch (e) {
        print('Błąd GPT: $e');
      }

      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Twój dziennik nastroju')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Jak się dziś czujesz?',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _submitEntry,
              child: const Text('Zapisz i przeanalizuj'),
            ),
          ],
        ),
      ),
    );
  }
}
