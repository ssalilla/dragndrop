class sizes {
  int id;
  String size;
  String image;
  double price;

  sizes({
    this.id,
    this.size,
    this.image,
    this.price,
  });
}

class Sizes {

  List<sizes> _sizes = [];

  Sizes() {
  _sizes = [
    sizes(
      id: 1,
      size: 'ถาดกลาง',
      image: 'assets/M.png',
      price: 0,
    ),
    sizes(
      id: 2,
      size: 'ถาดใหญ่ + 100 บาท',
      image: 'assets/L.png',
      price: 100,
    ),
  ];
  }

  List<sizes> get Size => _sizes;
}