import 'package:eslami/model/radio_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/api_manager.dart';
import '../../model/radio.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  ApiManager api = ApiManager();
  RadioCubit() : super(RadioInitial());

  getRadio() async{
    try{
      var response = await api.getRadios();
      var radioData = RadioResponse.fromJson(response);
      emit(RadioSuccess(radioData.radios));
    }
    catch(e){
      emit(RadioError(e.toString()));
    }

  }

}

