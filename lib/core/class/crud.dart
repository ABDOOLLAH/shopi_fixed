import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:shopi/core/functions/CheckInternet.dart';
import 'package:http/http.dart' as http;
import 'package:shopi/core/class/statusrequest.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {

    if (await CheckInternet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      print(response.statusCode) ;

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        print(responsebody) ;
        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }

  }
}