class Failure {
  // Provide a default error message here

  Failure(this.statusCode, this.message);
  int statusCode; // 200, 201, 400, 303..500 and so on
  String message;
}
