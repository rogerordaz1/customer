import 'package:app/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial() = _LoginStateInitial;
  factory LoginState.loading() = _LoginStateLoading;
  factory LoginState.error(List<String?> errors) = _LoginStateError;
  factory LoginState.isSuccess({required Auth auth}) = _LoginStateIsSuccess;
}
