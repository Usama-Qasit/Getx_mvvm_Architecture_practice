

class AppExceptions implements Exception{

  final _message ;
  final _prefix ;

  AppExceptions([this._message,this._prefix]);

  String toString(){

    return '$_message$_prefix';
  }

}

class InternetExceptions extends AppExceptions{

  InternetExceptions([String? message]) : super(message,'no internet');
}

class RequestTimeOutException extends AppExceptions{

  RequestTimeOutException([String? message ]):super(message,'Request time out');

}
class InvalidUrlExceptions extends AppExceptions{
  InvalidUrlExceptions([String? message]): super (message,'Invalid url');

}

class FetchDataExceptions extends AppExceptions{
  FetchDataExceptions([String? message]) : super(message , 'Error while communicating');
}
