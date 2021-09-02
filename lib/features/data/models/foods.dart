class Foods {
  int? id;
  String? price;
  String? name;
  String? image;

  Foods({this.id, this.price, this.name, this.image});

  factory Foods.fromJson(Map<String, dynamic> json) {
    return Foods(
      id: json['id'],
      price: json['price'],
      name: json['name'],
      image: json['image']
    );
  }
}