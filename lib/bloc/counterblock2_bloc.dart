import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counterblock2_event.dart';
part 'counterblock2_state.dart';

class Counterblock2Bloc extends Bloc<Counterblock2Event, Counterblock2State> {
  Counterblock2Bloc() : super(Counterblock2Initial()) {
    on<increment>((event, emit) {
      return emit (Counterblock2State(count: state.count+1));
      // TODO: implement event handler
    });
    on<decrement>((event, emit){
      return emit (Counterblock2State(count:state.count-1));
    });
  }
}
