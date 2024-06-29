import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsappwebclone1/colors.dart';
import 'package:whatsappwebclone1/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: const Text('WhatsApp',
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(8.0)),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 46, 46, 46),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(width: 0.8),
              ),
              hintText: 'Search...',
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ),
          const Expanded(
            child: ContactsLists(),
          )
        ],
      ),
    );
  }
}
