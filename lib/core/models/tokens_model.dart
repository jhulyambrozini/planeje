class TokensModel {
  final String userToken;
  final String deviceToken;

  TokensModel({required this.userToken, required this.deviceToken});

  factory TokensModel.fromMap(Map<String, dynamic> map) {
    return TokensModel(
      userToken: map['userToken'],
      deviceToken: map['deviceToken'],
    );
  }
}
