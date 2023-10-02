
import 'package:getx_mvvm/data/status.dart';

class ApiResponse<T>{
  status ? Status;
  T? data;
  String? message;
  ApiResponse(this.Status,this.data,this.message);

  ApiResponse.loading() :Status =status.LOADING;
  ApiResponse.completed(): Status = status.COMPLETE;
  ApiResponse.error(): Status = status.ERROR;

  @override
  String toString(){
    return "status : $Status\n Data : $data\n Message : $message ";

  }
}
