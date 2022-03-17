import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'doctor_messages_state.dart';

class DoctorMessagesCubit extends Cubit<DoctorMessagesState> {
  DoctorMessagesCubit() : super(DoctorMessagesInitial());
  static DoctorMessagesCubit get(context) => BlocProvider.of(context);
}
