part of 'main_cubit.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {}



class IncrementState extends MainState{}
class decrementState extends MainState{}
class ThemeDark extends MainState{}
class ThemeLight extends MainState{}