class MenuHomeModel{

  late String imgAssetPath;
  late String eventType;
  int? jenis;
}
class MenuProduct{
  late String pruduct;
  late String price;
  late bool favorite;
  late String range;
  late String img;
}
class MenuKatalog{
  late String pruduct;
  late String price;
  late bool favorite;
  late String range;
  late String seen;
  late String like;
  late String img;
}
List<MenuHomeModel> getMenuHomePage(){
  List<MenuHomeModel> menu = [];
  MenuHomeModel menuHomeModel =MenuHomeModel();

  menuHomeModel.imgAssetPath = "assets/images/promo.png";
  menuHomeModel.eventType = "Promo";
  menuHomeModel.jenis = 1;
  menu.add(menuHomeModel);
  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/beras.png";
  menuHomeModel.eventType = "Beras";
  menuHomeModel.jenis = 2;
  menu.add(menuHomeModel);

  menuHomeModel = MenuHomeModel();

  menuHomeModel.imgAssetPath = "assets/images/daging.png";
  menuHomeModel.eventType = "Daging";
  menuHomeModel.jenis = 3;
  menu.add(menuHomeModel);


  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/sayuran.png";
  menuHomeModel.eventType = "Sayuran";
  menuHomeModel.jenis = 4;
  menu.add(menuHomeModel);


  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/ikan.png";
  menuHomeModel.eventType = "Ikan";
  menuHomeModel.jenis = 5;
  menu.add(menuHomeModel);

  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/buah.png";
  menuHomeModel.jenis = 6;
  menuHomeModel.eventType = "Buah Buahan";
  menu.add(menuHomeModel);


  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/bumbu.png";
  menuHomeModel.eventType = "Bumbu";
  menuHomeModel.jenis = 7;
  menu.add(menuHomeModel);

  menuHomeModel = MenuHomeModel();

  menuHomeModel.imgAssetPath = "assets/images/susutelur.png";
  menuHomeModel.eventType = "Susu dan Telur";
  menuHomeModel.jenis = 8;
  menu.add(menuHomeModel);

  return menu;
}

List<MenuHomeModel> getMenuJualPage(){

  List<MenuHomeModel> menu = [];
  MenuHomeModel menuHomeModel =MenuHomeModel();

  menuHomeModel.imgAssetPath = "assets/images/beras.png";
  menuHomeModel.eventType = "Beras";
  menuHomeModel.jenis = 1;
  menu.add(menuHomeModel);
  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/daging.png";
  menuHomeModel.eventType = "Daging";
  menuHomeModel.jenis = 2;
  menu.add(menuHomeModel);

  menuHomeModel = MenuHomeModel();

  menuHomeModel.imgAssetPath = "assets/images/sayuran.png";
  menuHomeModel.eventType = "Sayuran";
  menuHomeModel.jenis = 3;
  menu.add(menuHomeModel);


  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/ikan.png";
  menuHomeModel.eventType = "Ikan";
  menuHomeModel.jenis = 4;
  menu.add(menuHomeModel);


  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/buah.png";
  menuHomeModel.eventType = "Buah";
  menuHomeModel.jenis = 5;
  menu.add(menuHomeModel);

  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/bumbu.png";
  menuHomeModel.jenis = 6;
  menuHomeModel.eventType = "Bumbu";
  menu.add(menuHomeModel);


  menuHomeModel = MenuHomeModel();
  menuHomeModel.imgAssetPath = "assets/images/susutelur.png";
  menuHomeModel.eventType = "Susu  dan  Telur";
  menuHomeModel.jenis = 7;
  menu.add(menuHomeModel);

  menuHomeModel = MenuHomeModel();

  menuHomeModel.imgAssetPath = "assets/images/truck.png";
  menuHomeModel.eventType = "Borongan";
  menuHomeModel.jenis = 8;
  menu.add(menuHomeModel);
  menuHomeModel = MenuHomeModel();

  menuHomeModel.imgAssetPath = "assets/images/lainya.png";
  menuHomeModel.eventType = "Lainnya";
  menuHomeModel.jenis = 8;
  menu.add(menuHomeModel);

  return menu;
}
List<MenuProduct> getMenuProduct(){
  List<MenuProduct> menuProduct = [];
  MenuProduct menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/apel.png";
  menuProductModel.pruduct = "Apel 1 Kg";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/ayam.png";
  menuProductModel.pruduct = "Ayam 1 Kg";
  menuProductModel.price = "Rp 17.000";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/bawangm.png";
  menuProductModel.pruduct = "Bawang Merah 1 Kg";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/bawangp.png";
  menuProductModel.pruduct = "Bawang Putih 1 Kg";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/bayam.png";
  menuProductModel.pruduct = "Bayam ";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/beras.png";
  menuProductModel.pruduct = "Beras 1 Kg";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();
  return menuProduct;
}
List<MenuProduct> getMenuPromo(){
  List<MenuProduct> menuProduct = [];
  MenuProduct menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/ayam.png";
  menuProductModel.pruduct = "Daging Ayam Segar";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.range = "900m";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/apel.png";
  menuProductModel.pruduct = "Apel 1 Kg";
  menuProductModel.price = "Rp 20.000";
  menuProductModel.range = "12km";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/kentang.png";
  menuProductModel.pruduct = "Kentang 1 Kg";
  menuProductModel.price = "Rp 30.000";
  menuProductModel.range = "500m";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/cabai.png";
  menuProductModel.pruduct = "Cabai Merah";
  menuProductModel.price = "Rp 100.000";
  menuProductModel.range = "800m";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/beras.png";
  menuProductModel.pruduct = "Beras 1 Kg";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.range = "3km";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();

  menuProductModel.img = "assets/product/sapi.png";
  menuProductModel.pruduct = "Daging Sapi";
  menuProductModel.price = "Rp 50.000";
  menuProductModel.range = "5km";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuProduct();
  return menuProduct;
}
List<MenuKatalog> getMenuKatalog(){
  List<MenuKatalog> menuProduct = [];
  MenuKatalog menuProductModel = MenuKatalog();

  menuProductModel.img = "assets/product/sapi.png";
  menuProductModel.pruduct = "Daging Sapi Segar";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.range = "900m";
  menuProductModel.seen = "21";
  menuProductModel.like = "9";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuKatalog();

  menuProductModel.img = "assets/product/wortel.png";
  menuProductModel.pruduct = "Wortel 1 Kg";
  menuProductModel.price = "Rp 20.000";
  menuProductModel.range = "12km";
  menuProductModel.seen = "15";
  menuProductModel.like = "10";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuKatalog();

  menuProductModel.img = "assets/product/kentang.png";
  menuProductModel.pruduct = "Kentang 1 Kg";
  menuProductModel.price = "Rp 30.000";
  menuProductModel.range = "500m";
  menuProductModel.seen = "100";
  menuProductModel.like = "99";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuKatalog();

  menuProductModel.img = "assets/product/cabai.png";
  menuProductModel.pruduct = "Cabai";
  menuProductModel.price = "Rp 100.000";
  menuProductModel.range = "800m";
  menuProductModel.seen = "84";
  menuProductModel.like = "43";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuKatalog();

  menuProductModel.img = "assets/product/tomat.png";
  menuProductModel.pruduct = "Tomat 1 Kg";
  menuProductModel.price = "Rp 15.000";
  menuProductModel.range = "3km";
  menuProductModel.seen = "32";
  menuProductModel.like = "20";
  menuProductModel.favorite = false;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuKatalog();

  menuProductModel.img = "assets/product/timun.png";
  menuProductModel.pruduct = "Timun ";
  menuProductModel.price = "Rp 50.000";
  menuProductModel.range = "5km";
  menuProductModel.seen = "21";
  menuProductModel.like = "9";
  menuProductModel.favorite = true;
  menuProduct.add(menuProductModel);
  menuProductModel = MenuKatalog();
  return menuProduct;
}