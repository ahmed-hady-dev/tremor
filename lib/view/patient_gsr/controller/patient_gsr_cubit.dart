import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'patient_gsr_state.dart';

class PatientGsrCubit extends Cubit<PatientGsrState> {
  PatientGsrCubit() : super(PatientGsrInitial());
  static PatientGsrCubit get(context) => BlocProvider.of(context);
}
