import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F4C5C),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF4F6F8),
        useMaterial3: true,
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  static const _skills = <String>[
    'Flutter',
    'Dart',
    'Firebase',
    'REST APIs',
    'N8n',
    'JavaScript',
    'Java',
    'Git & GitHub',
    'Kotlin',
    'Swift',
  ];

  static const _projects = <_Project>[
    _Project(
      title: 'MYPI-LB',
      description: 'A Crossplatform super app for customer and sales.',
      stack:
          'Flutter, Firebase, N8n, Express.js, FCM, Cross Platform(IOS, Android, Web)',
    ),
    _Project(
      title: 'E-commerce app',
      description: 'Basic ecommerce app with java and sqlite',
      stack: "Java, SQLITE",
    ),

    _Project(
      title: 'MM Inventory',
      description:
          'Basic inventory app with stock monitoring and saving user location\n(https://github.com/mmstationary/mitramedia_inventory)',
      stack: "Flutter, Firestore, FCM, Nodejs(Sending OTP)",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 960),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Joesdarian Ignatius',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      letterSpacing: 1.4,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF0F4C5C),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Mobile Developer',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1D2D35),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'I build clean, responsive apps for mobile and web with a focus on user-friendly design.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: const Color(0xFF364B57),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 28),
                  _SectionCard(
                    title: 'About',
                    child: Text(
                      'I am a developer passionate about creating reliable products and smooth user experiences. I enjoy building production-ready features, integrating APIs, and refining UI details.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: const Color(0xFF2F3F49),
                        height: 1.6,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _SectionCard(
                    title: 'Skills',
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: _skills
                          .map(
                            (skill) => Chip(
                              label: Text(skill),
                              backgroundColor: const Color(0xFFE7EEF1),
                              side: BorderSide.none,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _SectionCard(
                    title: 'Projects',
                    child: Column(
                      children: _projects
                          .map(
                            (project) => Padding(
                              padding: const EdgeInsets.only(bottom: 14),
                              child: _ProjectCard(project: project),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _SectionCard(
                    title: 'Contact',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        _ContactRow(
                          label: 'Email',
                          value: 'joesdarian.ignatius@gmail.com',
                        ),
                        SizedBox(height: 8),
                        _ContactRow(label: 'Phone', value: '089653618016'),
                        SizedBox(height: 8),
                        _ContactRow(
                          label: 'Github',
                          value: 'https://github.com/JoesdarianI',
                        ),
                        SizedBox(height: 8),
                        _ContactRow(
                          label: 'LinkedIn',
                          value:
                              'https://id.linkedin.com/in/joesdarian-ignatius',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1D2D35),
              ),
            ),
            const SizedBox(height: 14),
            child,
          ],
        ),
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  const _ProjectCard({required this.project});

  final _Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FBFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFDCE6EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 6),
          Text(
            project.description,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(height: 1.5),
          ),
          const SizedBox(height: 6),
          Text(
            project.stack,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: const Color(0xFF48606C),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  const _ContactRow({required this.label, required this.value});

  final String label;
  final String value;

  void _copy(BuildContext context) {
    Clipboard.setData(ClipboardData(text: value));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('$label copied')));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => _copy(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF2F3F49),
                  ),
                  children: [
                    TextSpan(
                      text: '$label: ',
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    TextSpan(text: value),
                  ],
                ),
              ),
            ),
            IconButton(
              tooltip: 'Copy $label',
              onPressed: () => _copy(context),
              icon: const Icon(Icons.copy_rounded, size: 18),
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}

class _Project {
  const _Project({
    required this.title,
    required this.description,
    required this.stack,
  });

  final String title;
  final String description;
  final String stack;
}
