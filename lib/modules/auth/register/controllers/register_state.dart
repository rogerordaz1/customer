import 'package:app/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState.initial() = _RegisterStateInitial;
  factory RegisterState.loading() = _RegisterStateLoading;
  factory RegisterState.success({required Auth auth}) = _RegisterStateSuccess;
  factory RegisterState.error(List<String?> errors) = _RegisterStateError;
}
