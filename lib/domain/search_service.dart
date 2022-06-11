import 'package:dartz/dartz.dart';
import 'package:seatgeek_api/domain/core/failures/main_failures.dart';
import 'package:seatgeek_api/domain/model/seatgeek/seatgeek.dart';

abstract class SearchService {
  Future<Either<MainFailure, Seatgeek>> searchWords({
     required String query,
  });
  Future<Either<MainFailure, List<Event>>> getImages();
}