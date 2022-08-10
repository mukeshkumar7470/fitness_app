import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/constants.dart';
import '../../../data/models/user_detail.dart';
import '../../../data/models/users.dart';

class UsersControllers extends GetxController {
  Users? user;
  UserDetail? userDetail;
  var isDataLoading = false.obs;

  getAllUsersFromApi() async {
   try {
     isDataLoading(true);
     http.Response response = await http.get(Uri.tryParse('${ApiEndpoints.baseURL}${ApiEndpoints.allUsers}')!,
         headers: {'app-id': '62d54dd2bc47eb32243b5231'});

     if (response.statusCode == 200) {
       var result = jsonDecode(response.body);

       print(result.toString());

       user = Users.fromJson(result);

     } else {
       ///error
     }
   } catch (e) {
     debugPrint('Error when getting data');
   } finally {
     isDataLoading(false);
   }
  }

  getUserDetailFromApi(userId) async {
    print('${ApiEndpoints.baseURL}${ApiEndpoints.userDetail}/$userId');
    try {
      isDataLoading(true);
      http.Response response = await http.get(Uri.tryParse('${ApiEndpoints.baseURL}${ApiEndpoints.userDetail}/$userId')!,
          headers: {'app-id': ApiEndpoints.appId});

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        userDetail = UserDetail.fromJson(result);
        print(userDetail.toString());

      } else {
        debugPrint('Error');
      }
    } catch (e) {
      debugPrint('Error when getting data');
    } finally {
      isDataLoading(false);
    }
  }


}
