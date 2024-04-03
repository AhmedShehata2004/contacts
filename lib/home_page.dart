import 'package:contacts_route/models/contact.dart';
import 'package:contacts_route/widgets/contact_card.dart';
import 'package:contacts_route/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    List<Contact> contactList=[Contact(),Contact(),Contact()];
   TextEditingController nameController =TextEditingController();
   TextEditingController phoneController =TextEditingController();
   int counter= 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text("Contacts Screen",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        ),
        body:    SingleChildScrollView(
          child: Column(
  children: [
       CustomTextField(
            controller: nameController,
            hintText: "Enter Your Name Here", suffixIcon: Icon(Icons.edit)
       ),
       CustomTextField(
             controller: phoneController,
             hintText: "Enter Your Phone Here", suffixIcon: Icon(Icons.phone)
       ),
    const SizedBox(width: 50,),

    Row(
            children: [
              const SizedBox(width: 10,),
             Expanded(
               child: FilledButton(
                 onPressed: (){
                    if(counter<3){
                       contactList[counter]=Contact(
                      visibility: true,
                      name:nameController.text ,
                         phone:phoneController.text,

     );
             counter++;
             setState(() {});
   }

               },
                   child: Text("Add",style: TextStyle(color: Colors.black),),
                style: FilledButton.styleFrom(backgroundColor: Colors.blue),
               ),
             ),
              const SizedBox(width: 10,),

              Expanded(
                child: FilledButton(onPressed: (){},
                  child: Text("Delete",style: TextStyle(color: Colors.black),),
                  style: FilledButton.styleFrom(backgroundColor: Colors.red,),
                ),
              ),
              const SizedBox(width: 10,),

            ],
          ),

    // Visibility(
    //     visible: contactList[0].visibility,
    //     child: Text(contactList[0].name??"")),

    ContactCard(contact: contactList[0]),
    ContactCard(contact: contactList[1]),
    ContactCard(contact: contactList[2]),

  ],
),
        ),
      ),
    );
  }
}
