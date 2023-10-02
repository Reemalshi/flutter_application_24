import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of(context);
  bool isDark = false;
  void ChangeToDark(){
    isDark = true;
    emit(ThemeDark());
  }
  void ChangeToLight(){
    isDark = false;
    emit(ThemeLight());
  }

  int counter=0;
  void Increment(){
    counter++;
    emit(IncrementState());
  }
  void decrement(){
    counter--;
    emit(decrementState());
  }
}
