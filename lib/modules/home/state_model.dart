

class StateModel {
  StateModel({
    required this.idEstate,
    required this.garden,
    required this.location,
    required this.roomsNumbers,
    required this.bathroomNumbers,
    required this.companyName,
    required this.type,
    required this.state,
    required this.size,
    required this.city,
    required this.street,
    required this.stNum,
    required this.price,
    required this.floorsNumbers,
    required this.description,
    required this.buy,
    required this.rent,
    this.image1,
    this.image2,
    this.image3,
    this.cover,
  });
  late final int idEstate;
  late final bool garden;
  late final String location;
  late final String roomsNumbers;
  late final String bathroomNumbers;
  late final String companyName;
  late final String type;
  late final String state;
  late final int size;
  late final String city;
  late final String street;
  late final int stNum;
  late final int price;
  late final int floorsNumbers;
  late final String description;
  late final bool buy;
  late final bool rent;
  late final Null image1;
  late final Null image2;
  late final Null image3;
  late final Null cover;

  StateModel.fromJson(Map<String, dynamic> json){
    idEstate = json['idEstate'];
    garden = json['garden'];
    location = json['location'];
    roomsNumbers = json['rooms_numbers'];
    bathroomNumbers = json['bathroom_numbers'];
    companyName = json['companyName'];
    type = json['type'];
    state = json['state'];
    size = json['size'];
    city = json['city'];
    street = json['street'];
    stNum = json['st_num'];
    price = json['price'];
    floorsNumbers = json['floors_numbers'];
    description = json['description'];
    buy = json['buy'];
    rent = json['rent'];
    image1 = null;
    image2 = null;
    image3 = null;
    cover = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['idEstate'] = idEstate;
    _data['garden'] = garden;
    _data['location'] = location;
    _data['rooms_numbers'] = roomsNumbers;
    _data['bathroom_numbers'] = bathroomNumbers;
    _data['companyName'] = companyName;
    _data['type'] = type;
    _data['state'] = state;
    _data['size'] = size;
    _data['city'] = city;
    _data['street'] = street;
    _data['st_num'] = stNum;
    _data['price'] = price;
    _data['floors_numbers'] = floorsNumbers;
    _data['description'] = description;
    _data['buy'] = buy;
    _data['rent'] = rent;
    _data['image1'] = image1;
    _data['image2'] = image2;
    _data['image3'] = image3;
    _data['cover'] = cover;
    return _data;
  }
}