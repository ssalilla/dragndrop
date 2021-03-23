class toppings {
  int id;
  String topping;
  String image;
  double price;

  toppings({
    this.id,
    this.topping,
    this.image,
    this.price,
  });
}

class Topping {

  List<toppings> _toppings = [];

  Topping() {
    _toppings = [
      toppings(
        id: 3,
        topping: 'เป็ปเปอร์โรนี',
        image: 'assets/pizza/1.png',
        price: 0,
      ),
      toppings(
        id: 4,
        topping: 'โฟว์ชีส',
        image: 'assets/pizza/2.png',
        price: 0,
      ),
      toppings(
        id: 5,
        topping: 'ค็อกเทลกุ้ง',
        image: 'assets/pizza/3.png',
        price: 0,
      ),
      toppings(
        id: 6,
        topping: 'เบค่อน',
        image: 'assets/pizza/4.png',
        price: 0,
      ),
      toppings(
        id: 7,
        topping: 'เห็ดย่าง',
        image: 'assets/pizza/5.png',
        price: 0,
      ),
      toppings(
        id: 8,
        topping: 'พริกหวาน',
        image: 'assets/pizza/6.png',
        price: 0,
      ),

    ];
  }

  List<toppings> get Toppings => _toppings;
}