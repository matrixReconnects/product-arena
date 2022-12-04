import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  static const IconData logout = IconData(0xe3b3, fontFamily: 'MaterialIcons');

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Product Arena',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Icon(Icons.logout),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: ClipOval(
                        child: Image.network(
                          'https://s3-alpha-sig.figma.com/img/fdfd/0fea/8f50ae6bb06473aabea6290fa963042f?Expires=1670803200&Signature=GXpHjXq3zlGUmKfsSeZQRrlrt8VcEJTU8bgjAAwt3YWbIG33SlxJ64Z2dRDFAzSxeO-FoasLemGLmJ~oMtns2PBrQkxyCiutpPIG1~dCc0286Nt-NfhU8KlcICLOQgbQnmNvLcRVFhDZibx-kftnlFta6FH9I4bj9JtRzSKjGXFWw3~-xTPHm6amWfqIAjavrqaZNbxfB7-u9ndDHBfZoGuIHTx1uuGDfgSBIURFJLaYwVSQ9Gj1Qvwa1YxeHunwUhW~j~5svMdC0jDY5F5TCKLCg7xyqd1emtqI2QKm7fZTVoHZ-GaClUz5Io061RVK9ctdLLos93CMe6~8hEeG6Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'My profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Dr. Jon Doe',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      'Patient list for today',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
