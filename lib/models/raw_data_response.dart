import 'dart:convert';

String getData(String str) {
  RawResponse rawResponse = RawResponse.fromJson(json.decode(str));
  return json.encode(rawResponse.data);
}

class RawResponse {
  String message;
  dynamic data;

  RawResponse({
    required this.message,
    required this.data,
  });

  factory RawResponse.fromJson(Map<String, dynamic> json) => RawResponse(
        message: json["message"],
        data: json["data"],
      );
}
