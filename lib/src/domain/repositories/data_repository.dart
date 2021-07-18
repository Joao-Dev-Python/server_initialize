

import 'package:server_provider/src/domain/entities/data.dart';

abstract class DataRepository {
  Future<List<Data>> getAllData(String parseObject,String cid,int limit);

  Future<List<Data>> getCatergoryData(String parseObject, String categ);
}
