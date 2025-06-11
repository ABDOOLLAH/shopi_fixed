import 'package:shopi/core/class/statusrequest.dart';

handlingDate(response){
  if(response is Statusrequest){

    return response;
  }else{
    return Statusrequest.success;
  }
}