import 'package:contacts_route/models/contact.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({super.key, required this.contact});

  final Contact contact;

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: widget.contact.visibility,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0), color: Colors.white),
          child: Column(children: [
            InkWell(
              onTap: () {
                showMore = !showMore;
                setState(() {});
              },
              child: Text(
                "Name: ${widget.contact.name}",
                maxLines: showMore == false ? 1 : null,
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Phone: ${widget.contact.phone}",
              style: TextStyle(fontSize: 18),
            ),
          ]),
        )
    );
  }
}
