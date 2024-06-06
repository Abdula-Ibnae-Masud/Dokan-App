import 'package:dokan/Custom_Widgets/input_text_field.dart';
import 'package:flutter/material.dart';

import '../../Custom_Widgets/app_modules.dart';

class ProfileBodyPart extends StatefulWidget {
  const ProfileBodyPart({super.key});

  @override
  State<ProfileBodyPart> createState() => _ProfileBodyPartState();
}

class _ProfileBodyPartState extends State<ProfileBodyPart> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController streatController = TextEditingController();
  TextEditingController addController = TextEditingController();
  TextEditingController zipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const CircleAvatar(
              radius: 50,
              backgroundColor: appColor,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage("assets/images/no-image.jpeg"),
                // child: Image(image: AssetImage("assets/images/no-image.jpeg")),
              ),
            ),
            const Text("Your Name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Text("Your Email",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            const SizedBox(height: 10),
            Column(
              children: [
                makeOptionsLists(Icons.person_add_alt_1_outlined, "Account", [
                  const SizedBox(height: 10),
                  InputTextFormField(
                    textController: emailController,
                    labelText: "Email",
                  ),
                  const SizedBox(height: 10),
                  InputTextFormField(
                    textController: nameController,
                    labelText: "Full Name",
                  ),
                  const SizedBox(height: 10),
                  InputTextFormField(
                    textController: streatController,
                    labelText: "Streat Address",
                  ),
                  const SizedBox(height: 10),
                  InputTextFormField(
                    textController: addController,
                    labelText: "Apt, Suite, Bldg (Optional)",
                  ),
                  const SizedBox(height: 10),
                  InputTextFormField(
                    textController: zipController,
                    labelText: "Zip Code",
                    keyBoard: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Colors.white54,
                        ),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10)
                ]),
                makeOptionsLists(Icons.lock_outline, "Passwords", []),
                makeOptionsLists(
                    Icons.notifications_active_outlined, "Notifications", []),
                makeOptionsLists(
                    Icons.favorite_border_outlined, "Wish List", []),
              ],
            )
          ],
        ),
      ),
    );
  }

  makeOptionsLists(IconData icon, String text, List<Widget> childern) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: const Offset(1, 1),
          spreadRadius: 4,
          blurRadius: 6,
          color: Colors.black.withOpacity(0.2),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: ExpansionTile(
        leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 235, 234, 234),
            radius: 25,
            child: Icon(icon)),
        title: Text(text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 14,
            )),
        children: childern,
      ),
    );
  }
}
