class MenuHomeModel{

  late String imgAssetPath;
  late String eventType;
  int? jenis;
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