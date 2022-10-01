import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_thir_bloc/cubit/counter_cubit.dart';
import 'view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [BlocProvider(create: (context)=>CounterCubit()),], child:MaterialApp(debugShowCheckedModeBanner: false,

        home: HomeScreen()
    ));
  }
}

