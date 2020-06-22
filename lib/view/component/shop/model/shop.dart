import 'dart:convert';

class Shop {
  String name;
  String price;
  String star;
  Shop({
    this.name,
    this.price,
    this.star,
  });

  Shop copyWith({
    String name,
    String price,
    String star,
  }) {
    return Shop(
      name: name ?? this.name,
      price: price ?? this.price,
      star: star ?? this.star,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'star': star,
    };
  }

  static Shop fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Shop(
      name: map['name'],
      price: map['price'],
      star: map['star'],
    );
  }

  String toJson() => json.encode(toMap());

  static Shop fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Shop(name: $name, price: $price, star: $star)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Shop && o.name == name && o.price == price && o.star == star;
  }

  @override
  int get hashCode => name.hashCode ^ price.hashCode ^ star.hashCode;
}
