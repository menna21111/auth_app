import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/state.dart';
import 'screan/firstscrean.dart';
import 'screan/signinscrean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
BlocProvider(create: (context) => userCubit(UserInitial())),
    ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  FirstScreen()
      ),
    );
  }
}

