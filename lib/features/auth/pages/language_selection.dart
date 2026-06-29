import 'package:flutter/material.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String _selectedLanguageCode = 'en';

  final List<Map<String, String>> _languages = [
    {'name': 'English', 'code': 'en'},
    {'name': 'Australia', 'code': 'au'},
    {'name': 'French', 'code': 'fr'},
    {'name': 'Spanish', 'code': 'es'},
    {'name': 'American', 'code': 'us'},
    {'name': 'Vietnamese', 'code': 'vn'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161822),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Language",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1F222A),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xFF7E818C)),
                  hintText: "Search Language",
                  hintStyle: TextStyle(color: Color(0xFF7E818C)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.separated(
                itemCount: _languages.length,
                separatorBuilder: (context, index) => const Divider(
                  color: Color(0xFF2C2F3A),
                  height: 1,
                  indent: 60,
                ),
                itemBuilder: (context, index) {
                  final language = _languages[index];
                  final isSelected = language['code'] == _selectedLanguageCode;

                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? Colors.transparent : const Color(0xFF2C2F3A),
                      ),
                      child: isSelected 
                          ? const Icon(Icons.language, color: Colors.white, size: 20) 
                          : null,
                    ),
                    title: Text(
                      language['name']!,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    trailing: isSelected
                        ? const Icon(Icons.check_circle, color: Color(0xFF3465EB))
                        : null,
                    onTap: () {
                      setState(() {
                        _selectedLanguageCode = language['code']!;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}