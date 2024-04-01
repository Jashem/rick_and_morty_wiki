abstract class AppException implements Exception {
  final int? errorCode;
  final String message;

  AppException(this.errorCode, this.message);
}

class RestApiException extends AppException {
  RestApiException(super.errorCode, super.message);
}

class NoInternetException extends AppException {
  NoInternetException()
      : super(
          null,
          "Please check your internet connection and try again!",
        );
}

class GoogleSigninException extends AppException {
  GoogleSigninException(super.errorCode, super.message);
}

class UnknownException extends AppException {
  UnknownException(super.errorCode, super.message);
}

class PlatformException extends AppException {
  PlatformException(super.errorCode, super.message);
}

class JSONFormatException extends AppException {
  JSONFormatException(super.errorCode, super.message);
}
