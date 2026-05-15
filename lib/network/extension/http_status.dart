extension HttpStatusExtention on int {
  bool isSuccess() => this >= 200 && this <= 299;
}