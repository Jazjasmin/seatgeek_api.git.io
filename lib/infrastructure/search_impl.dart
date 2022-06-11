import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:seatgeek_api/const/api_key.dart';
import 'package:seatgeek_api/domain/core/failures/main_failures.dart';
import 'package:seatgeek_api/domain/model/seatgeek/seatgeek.dart';
import 'package:seatgeek_api/domain/search_service.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: SearchService)
class SerachImpl implements SearchService{
  @override
  Future<Either<MainFailure, Seatgeek>> searchWords ({
        required String query}) async {
     try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.end_point,
          queryParameters:{ 
            'query': query,
          },
          );
         // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Seatgeek.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } 
    on DioError catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
    catch(e){
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
  