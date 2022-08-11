
import 'package:ecommerce_app/enums/loading_types.dart';

class LoadingState {
  LoadingType loadingType;
  String? error;
  String? completed;

  LoadingState({required this.loadingType, this.error, this.completed});
}