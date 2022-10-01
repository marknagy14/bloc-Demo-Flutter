import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_thir_bloc/cubit/counter_cubit.dart';
import 'package:session_thir_bloc/cubit/counter_state.dart';

class HomeScreen extends StatelessWidget {


  Widget buildBlocWidget(){
    return BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
      return Text(
        context
            .read<CounterCubit>()
            .counter
            .toString(), // read return values in cubit
        style: TextStyle(fontSize: 50),
      );
    });
  }


  Widget addFab(BuildContext context,Icon icon){
    return FloatingActionButton(backgroundColor: Color.fromRGBO(139, 0, 0, 1),
        onPressed: () {
          context.read<CounterCubit>().incrementCounter();
        },
        child: icon,
        );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(139, 0, 0, 1),
        title: Text('Counter app'),
      ),
      body: Center(
        child: Container(padding: EdgeInsets.only(top:70),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              buildBlocWidget(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addFab(context, Icon(Icons.remove_sharp)),
                    
                    SizedBox(width: 10,),
                    addFab(context, Icon(Icons.add))


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
