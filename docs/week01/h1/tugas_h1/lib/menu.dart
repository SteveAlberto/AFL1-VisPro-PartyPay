class MenuItem {
  String name;
  double price;
  double? discountPercent;

  MenuItem(this.name, this.price, this.discountPercent);

  double finalPrice (){
    if (discountPercent != null) {
      return price - (price * (discountPercent ?? 0) / 100);
    }
    return price;
  }
}

void main() {
  List<MenuItem> menuItems = [];
  var menu1 = MenuItem("Ayam geprek", 10000.0, 20.0);
  var menu2 = MenuItem("Mie ayam", 15000.0, null);
  var menu3 = MenuItem("Coto", 20000.0, 10.0);
  var menu4 = MenuItem("Ayam gepuk", 25000.0, 15.0);

  menuItems.add(menu1);
  menuItems.add(menu2);
  menuItems.add(menu3);
  menuItems.add(menu4);

  for (var item in menuItems) {
    print("Harga ${item.name}: Rp ${item.finalPrice()}");
  }

  var allNames = menuItems.map((item) => item.name).toList();
  print("Semua Nama Menu: $allNames");

  var itemsDibawah15k = menuItems.where((item) => item.finalPrice() < 15000).map((item) => item.name).toList();
  print("Menu di bawah Rp 15.000: $itemsDibawah15k");

  var totalPrice = menuItems.fold(0.0, (sum, item) => sum + item.finalPrice());
  print("Total Harga Keseluruhan: Rp$totalPrice");
}