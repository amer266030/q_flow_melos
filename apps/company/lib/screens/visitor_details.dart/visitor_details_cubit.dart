import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'visitor_details_state.dart';

class VisitorDetailsCubit extends Cubit<VisitorDetailsState> {
  VisitorDetailsCubit() : super(VisitorDetailsInitial());
  emitUpdatUI() => emit(UpdateUIState());
}
