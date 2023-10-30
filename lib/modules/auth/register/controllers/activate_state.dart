import 'package:app/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activate_state.freezed.dart';

@freezed
class ActivateState with _$ActivateState {
  factory ActivateState.initial() = _ActivateStateInitial;
  factory ActivateState.loading() = _ActivateStateLoading;
  factory ActivateState.success({required Auth auth}) = _ActivateStateSuccess;
  factory ActivateState.error(List<String?> error) = _ActivateStateError;
}
