import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'doctor_dashboard_state.dart';

class DoctorDashboardCubit extends Cubit<DoctorDashboardState> {
  DoctorDashboardCubit() : super(DoctorDashboardInitial());
  static DoctorDashboardCubit get(context) => BlocProvider.of(context);
}
