part of 'radio_cubit.dart';

abstract class RadioState {}

final class RadioInitial extends RadioState {}
final class RadioSuccess extends RadioState {
  List<RadioModel>? radios;
  RadioSuccess(this.radios);
}
final class RadioError extends RadioState {
  String error;
  RadioError(this.error);
}
