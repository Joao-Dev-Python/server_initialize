
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:server_provider/src/domain/constants/constants.dart';
import 'package:server_provider/src/domain/entities/data.dart';
import 'package:server_provider/src/domain/repositories/data_repository.dart';

class GetData extends DataRepository {
  @override
  Future<List<Data>> getAllData(String parseObject,String cid,int limit) async {
      final queryPost = QueryBuilder<ParseObject>(ParseObject(parseObject))..setLimit(limit)
      ..whereEqualTo(city_id,cid);
      final getdoc = await queryPost.query();

    if (getdoc.success) {
      return getdoc.results!.map<Data>((e) => Data(e.toJson())).toList();
    }
    return [];
  }

  //____________________________________________________________________________

  @override
  Future<List<Data>> getCatergoryData(String parseObject, String categ) async {
    final queryPost = QueryBuilder<ParseObject>(ParseObject(parseObject))
      ..whereEqualTo(category, categ);
    final apiResponse = await queryPost.query();

    if (apiResponse.success) {
      return apiResponse.results!.map((e) => Data(e)).toList();
    }
    return [];
  }
}
