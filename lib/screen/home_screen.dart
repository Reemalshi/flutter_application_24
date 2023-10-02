import 'package:flutter/material.dart';
import 'package:flutter_application_24/cubits/main/cubit/auth_cubit.dart';
import 'package:flutter_application_24/cubits/main/main_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("bulid agin");
    // i++;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
              // Text(i.toString()),
              Text("Home"),
        ),
          body: Center(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state is LoadingLoginState
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      AuthCubit.get(context).login("Reem@gmail.com", "789452");
                    },
                    child: Text("Login"),
                  );
          }
         
        // body: SwitchListTile(
        //   value: MainCubit.get(context).isDark, 
        //   onChanged: (value) {
        //     if (value) {
        //       MainCubit.get(context).ChangeToDark();
        //     }else{
        //       MainCubit.get(context).ChangeToLight();
        //     }
        //   },),
        // body: Column(
        //   children: [
            
            // BlocBuilder<MainCubit, MainState>(
            //   builder: (context, state) {
            //     return Text(
            //       // counter.toString(),
            //       MainCubit.get(context).counter.toString(),
            //       style: const TextStyle(fontSize: 15),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //     onPressed: () {
            //       MainCubit.get(context).Increment();
            //       setState(() {});
            //     },
            //     child: Text("++")),
            // ElevatedButton(
            //     onPressed: () {
            //       MainCubit.get(context).decrement();
            //       setState(() {});
            //     },
            //     child: Text("--"))
        //   ],
        // ),
      ),
    ),
      ),
    );
  }
}
