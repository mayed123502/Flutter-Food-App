
import 'package:ecommerce_app/services/helper/statusrequest.dart';

handlingData(response){
  if (response is StatusRequest){
   return response ; 
  }else {
   return StatusRequest.success ; 
  }
}