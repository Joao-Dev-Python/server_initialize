abstract class OrderDataRepository{


  Future<Map<String,dynamic>> getUserOrdersData(String parseObject,String uid);
  Future<void> setUserOrdersData(String parseObject,String uid);

}