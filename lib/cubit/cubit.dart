import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class userCubit extends Cubit<UserStates> {
  GlobalKey<FormState> signinformkey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  userCubit(super.initialState);
  Signin() async {
    try {
      emit(Signinloading());
      var response = await Dio().post(
        'https://food-api-omega.vercel.app/api/v1/user/signin',
        data: {'email': email.text, 'password': password.text},
      );
      emit(SigninScuess());
      print(response);
    } catch (e) {
      emit(SigninFailure(e.toString()));
      print(e.toString());
    }
  }
}
