import 'package:country_api_with_bloc_pattern/api/model/country_model.dart';
import 'package:country_api_with_bloc_pattern/const/api_const.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'country_api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class CountryApiService {
  factory CountryApiService(Dio dio) => _CountryApiService(dio);

  @GET(ApiConst.all)
  Future<List<CountryModel>> getAllCountry();

  @GET('${ApiConst.search}{name}')
  Future<List<CountryModel>> searchCountry(
      {@Path('name') required String name});
}
