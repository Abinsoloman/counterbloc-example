part of 'counterblock2_bloc.dart';

@immutable
sealed class Counterblock2Event {}

class increment extends Counterblock2Event{}
class decrement extends Counterblock2Event{}