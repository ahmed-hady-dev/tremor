import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'patient_messages_state.dart';

class PatientMessagesCubit extends Cubit<PatientMessagesState> {
  PatientMessagesCubit() : super(PatientMessagesInitial());
  static PatientMessagesCubit get(context) => BlocProvider.of(context);
}
