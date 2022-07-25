class LoginController {
  Future<bool> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 3));

    return true;
  }
}
