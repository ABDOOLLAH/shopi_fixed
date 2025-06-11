import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/functions/checkinternet.dart';

class Crud {
  Future<Either<Statusrequest, Map>> postDate(String uri, Map date) async {
    try {
      if (await CheckInternet()) {
        var response = await http.post(Uri.parse(uri), body: date);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return const Left(Statusrequest.serverfailure);
        }
      } else {
        return const Left(Statusrequest.offlinfailure);
      }
    } catch (_) {
      return const Left(Statusrequest.serverfailure);
    }
  }
}
