import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:seatgeek_api/const/api_key.dart';
import 'package:seatgeek_api/domain/core/failures/main_failures.dart';
import 'package:seatgeek_api/domain/i_search_service.dart';
import 'package:seatgeek_api/domain/model/seatgeek/seatgeek.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: ISearchRepo)
class SerachRepo implements ISearchRepo{
@override
  Future<Either<MainFailure, List<Event>>> getImages() async{
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.end_point);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final eventList = (response.data['result'] as List).map((e) {
          return Event.fromJson(e);
        }).toList();

        print(eventList);
        return Right(eventList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
  
}