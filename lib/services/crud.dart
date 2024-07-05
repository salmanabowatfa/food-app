import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:food_app/functions/check_internet.dart';
import 'package:food_app/services/statusrequest.dart';
import 'package:http/http.dart' as http;

class Crud {
  static String baseUrl = "https://task5-toleen-falion.trainees-mad-s.com/api";
  static Future<Either<StatusRequest, Map>> postData(
      {required String linkurl, required Map data}) async {
    try {
      if (await checkInternet()) {
        var response =
            await http.post(Uri.parse(baseUrl + linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      }
      return const Left(StatusRequest.offlinefailure);
    } catch (_) {
      return const Left(StatusRequest.serverfailure);
    }
  }
}
