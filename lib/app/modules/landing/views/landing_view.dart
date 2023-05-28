import 'package:flash_chat/app/widgets/buttons/register_widget.dart';
import 'package:flash_chat/app/widgets/text_fields/input_decoration_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('LandingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {},
                decoration: registerDecoration.copyWith(
                  hintText: 'Name',
                  prefixIcon: Icon(Icons.person_2_outlined),
                ),
              ),
              sizedBox,
              TextField(
                onChanged: (value) {},
                decoration: registerDecoration.copyWith(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              sizedBox,
              TextField(
                onChanged: (value) {},
                decoration: registerDecoration.copyWith(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.key_outlined),
                ),
              ),
              sizedBox,
              RegisterWidget(
                text: 'Enter',
                onTap: () {
                  // controller.singUp();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
