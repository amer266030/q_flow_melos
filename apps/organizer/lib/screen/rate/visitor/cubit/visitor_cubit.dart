import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'visitor_state.dart';

class VisitorCubit extends Cubit<VisitorState> {
  VisitorCubit() : super(VisitorInitial());

  void emitLoading() => emit(LoadingState());
  void emitUpdate() => emit(UpdateUIState());
}
