import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:signup/cubit/cubit.dart';
import 'package:signup/cubit/state.dart';

import '../constant/colors.dart';
import 'homescrean.dart';

class Signinscrean extends StatelessWidget {
  const Signinscrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return BlocConsumer<userCubit, UserStates>(
          listener: (context, state) {
            if (state is SigninScuess) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('success')));
            } else if (state is SigninFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.errormsg)));
            }
          },
          builder: (context, state) {
            // Wrap the entire widget tree with a Scaffold
            return Scaffold(
              body: SingleChildScrollView(
                child: Form(
                  key: context.read<userCubit>().signinformkey,
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: WaveClipperOne(),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/plant.jpg'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      const Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 28, 108, 30),
                        ),
                      ),
                      const Text(
                        'login to your account',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: context.read<userCubit>().email,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              size: 24,
                              color: Colors.green,
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(232, 245, 233, 1),
                            hintText: 'enter your email',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(232, 245, 233, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(232, 245, 233, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: context.read<userCubit>().password,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 24,
                              color: Colors.green,
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(235, 242, 240, 1),
                            hintText: 'enter password',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(232, 245, 233, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(232, 245, 233, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 40,
                        width: 300,
                        child: state is Signinloading
                            ? Center(child: CircularProgressIndicator(color: kprimarycolor,))
                            : ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color.fromARGB(255, 21, 83, 23),
                                ),
                                onPressed: () {
                                  context.read<userCubit>().Signin();
                                  // Uncomment the below lines if you want to navigate to the HomeScrean after signing in
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => HomeScrean()));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account? '),
                          Text(
                            'Sign up',
                            style: TextStyle(
                              color: kprimarycolor,
                              decoration: TextDecoration.underline,
                              decorationColor: kprimarycolor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
