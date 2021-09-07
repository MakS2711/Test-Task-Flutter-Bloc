class Food {
  int? id;
  String? price;
  String? name;
  String? image;

  Food({this.id, this.price, this.name, this.image});

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      id: json['id'],
      price: json['price'],
      name: json['name'],
      image: json['image']
    );
  }
}