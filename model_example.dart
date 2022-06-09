void main() {
  var myMap={
    "name":"Dastgir",
    "age":34,
    "city":"Shangai",
    "address":[
      {
        "Country":"China",
        "City":"Shangai"
      },
      {
        "Country":"Bangladesh",
        "City":"Chakkachakka"
      }
    ]
  };
  
  var obj = Person.fromJson(myMap);
  var myAddress = obj.address;
  
  myAddress!.map((e){
    print(e.country);
  }).toList();
  
  print(obj.name);
  
  var addressList= myMap["address"];
}

class Person{
  String? name;
  int? age;
  String? city;
  List<Address>? address;
  
  Person({this.name, this.age, this.city, this.address});
  
  Person.fromJson(Map<String, dynamic> json){
    name = json["name"];
    age = json["age"];
    city = json["city"];
    
    if(json["address"]!=null){
      address=<Address>[]; //create list that is empty
      (json['address'] as List).forEach((e){
        address!.add(Address.fromJson(e));
      });
    }
    
  }
  
  
}

class Address{
  String? country;
  String? city;
 
  Address({this.country, this.city});
  
  Address.fromJson(Map<String, dynamic> json){
    country = json["Country"];
    city = json["City"]; 
  }
  
}
