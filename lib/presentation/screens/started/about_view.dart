import 'package:fitness_app/presentation/getx/controllers/GenderSelectionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/colors.dart';
import '../../widgets/GenderSelection.dart';

class AboutView extends StatelessWidget {

  var gender = Get.put(GenderSelectionController());

  @override
  Widget build(BuildContext context) {

    bool value = false;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/16.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  RichText(
                    text: const TextSpan(
                      text: 'HARD\t',
                      style: TextStyle(
                          fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ELEMENT',
                          style: TextStyle(color: kFirstColor),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About You",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "We want to know more about you, follow the next \nsteps to complete the information",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OptionWidget(
                        state: "I'm\nBeginner",
                        detail: "I have trained several times",
                        onTap: ()  {
                          print('chadadfasf');
                          gender.selectedGender.value ? gender.selectedGender.value = false : gender.selectedGender.value = true;
                          print('chadadfasf 1111'+gender.selectedGender.value.toString());
                        },
                      ),
                      SizedBox(width: 20),
                      OptionWidget(
                        state: "I'm\nExpert",
                        detail: "I have trained more times",
                        onTap: () {
                          print('chadadfasf');
                          gender.selectedGender.value ? gender.selectedGender.value = false : gender.selectedGender.value = true;
                          print('chadadfasf 1111'+gender.selectedGender.value.toString());
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  buildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooter() {
    return Row(
      children: [
        TextButton(
          onPressed: () => Get.back(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                "Back",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {

          },
          child: Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kFirstColor,
            ),
            child: Center(
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
