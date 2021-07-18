class Data {
  late String objectId;
  late String title;
  late List images;
  late String shopeImage;
  late String shopeName;
  late double price;
  late double discount;
  late bool isActive;
  late String categ_id;
  late List creditCard;
  late List debitCard;
  late bool delivery;
  late String description;
  late double installments;
  late bool money;
  late String shopId;
  late String pix;
  late List products;
  late double teleForFree;
  late  List models;
  late List sizes;
  late String city_id;

  Data(doc) {
    objectId = doc['objectId'];
    title = doc['title'];
    images = doc['images'];
    shopeImage = doc['shopeImage'];
    shopeName = doc['shopeName'];
    price = doc['price'] + 0.0;
    discount = doc['discount'] + 0.0;
    isActive = doc['isActive'];
    categ_id = doc['category'];
    creditCard = doc['creditCard'];
    debitCard = doc['debitCard'];
    delivery = doc['delivery'];
    description = doc['description'];
    installments = doc['installments']+0.0;
    money = doc['money'];
    shopId = doc['shopId'];
    pix  = doc['pix'];
    products = doc['products'];
    teleForFree = doc['teleForFree']+0.0;
    models = doc['models'];
    sizes = doc['sizes'];
    city_id = doc['city_id'];

  }
}
