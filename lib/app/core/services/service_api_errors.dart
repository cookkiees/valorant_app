enum ApiError {
  notFound,
  unauthorized,
  forbidden,
  internalServerError,
  badRequest,
}

extension HttpStatusErrorHandling on int {
  String get errorMessage {
    switch (this) {
      case 404:
        return 'Not Found: The requested resource could not be found.';
      case 401:
        return 'Unauthorized: Authentication failed or not provided.';
      case 403:
        return 'Forbidden: You do not have permission to access this resource.';
      case 500:
        return 'Internal Server Error: Something went wrong on the server.';
      case 400:
        return 'Bad Request: The request was invalid or cannot be served.';
      default:
        return 'Unknown Error: An unknown error occurred with status code $this.';
    }
  }
}

extension ApiErrorExtension on ApiError {
  String get errorMessage {
    switch (this) {
      case ApiError.notFound:
        return 'Not Found: The requested resource could not be found.';
      case ApiError.unauthorized:
        return 'Unauthorized: Authentication failed or not provided.';
      case ApiError.forbidden:
        return 'Forbidden: You do not have permission to access this resource.';
      case ApiError.internalServerError:
        return 'Internal Server Error: Something went wrong on the server.';
      case ApiError.badRequest:
        return 'Bad Request: The request was invalid or cannot be served.';
      default:
        return 'Unknown Error: An unknown error occurred.';
    }
  }
}
