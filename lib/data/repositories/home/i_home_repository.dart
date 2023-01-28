import 'package:dartz/dartz.dart';
import 'package:mms_assignment/data/models/home/home_page_models.dart';

abstract class IHomeRepository {
  Future<Either<String, HomeDataModel>> fetchHomeData();
}
