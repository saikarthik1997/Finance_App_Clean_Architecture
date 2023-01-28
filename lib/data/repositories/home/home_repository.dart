import 'package:dio/dio.dart';
import 'package:mms_assignment/common/values/api_endpoints.dart';
import 'package:mms_assignment/common/values/strings.dart';
import 'package:mms_assignment/data/models/home/home_page_models.dart';
import 'package:dartz/dartz.dart';
import 'package:mms_assignment/data/repositories/home/i_home_repository.dart';

class HomeRepository extends IHomeRepository {
  final Dio apiClient;
  HomeRepository({required this.apiClient});
  @override
  Future<Either<String, HomeDataResponse>> fetchHomeData() async {
    try {
      Response response = await apiClient.get(ApiEndPoints.homeDataUrl);
      if (response.statusCode == 200) {
        return right(HomeDataResponse.fromJson(response.data));
      } else {
        return left(response.statusMessage ?? CommonStrings.somethingWrong);
      }
    } catch (e) {
      return left(CommonStrings.somethingWrong);
    }
  }
}
