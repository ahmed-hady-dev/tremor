import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
//===============================================================
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();

  //===============================================================

  @override
  Future<void> close() {
    emailController.dispose();
    return super.close();
  }
}
