import 'package:contacts_route/models/contact.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key, required this.contact});
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Visibility(

        child: Container(
          width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal:15 ,vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal:5 ,vertical: 10),

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0), color: Colors.white),
          child: Column(children: [
              Text("Name: ${contact.name}",style: TextStyle(fontSize: 18),),
               const SizedBox(height: 10,),
               Text("Phone: ${contact.phone}",style: TextStyle(fontSize: 18),),

  ]),
    )
    );
  }
}
