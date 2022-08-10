import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/colors.dart';
import '../getx/controllers/GenderSelectionController.dart';

class OptionWidget extends StatelessWidget {
  final String? state, detail;
  bool? enable = false;
  var onTap;

  OptionWidget({
    Key? key,
    this.onTap,
    this.state,
    this.detail,
    this.enable,
  }) : super(key: key);

  // GenderSelectionController genderSelectionController = Get.put(GenderSelectionController());
  var gender = Get.put(GenderSelectionController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
                color: kSecondColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(3, 3),
                    blurRadius: 8,
                    spreadRadius: -8,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    state!,
                    style: const TextStyle(
                        color: kFirstColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(height: 10),
                  Text(
                    detail!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF373850),
              ),
              child: Obx(
                () => gender.selectedGender.value
                    ? const Center(
                        child: Icon(
                          Icons.done,
                          color: kFirstColor,
                        ),
                      )
                    : SizedBox(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
