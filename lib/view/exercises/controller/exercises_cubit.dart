import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'exercises_state.dart';

class ExercisesCubit extends Cubit<ExercisesState> {
  ExercisesCubit() : super(ExercisesInitial());
  static ExercisesCubit get(context) => BlocProvider.of(context);
}
