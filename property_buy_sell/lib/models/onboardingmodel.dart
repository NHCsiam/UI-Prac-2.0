// ignore_for_file: public_member_api_docs, sort_constructors_first
class Datamodel {
  int count;
  String title;
  String sub;
  String imgpath;
  Datamodel({
    required this.count,
    required this.title,
    required this.sub,
    required this.imgpath,
  });
}

List<Datamodel> datamodels = [
  Datamodel(
    count: 0,
    title: "Discover dream house from\n Smartphone",
    sub:
        "The no 1 App for searching and buying \n The most suitable house for you",
    imgpath:
        "assets/images/undraw_House_searching_re_stk8-removebg-preview.png",
  ),
  Datamodel(
    count: 1,
    title: "Select Your Prefferable\n House",
    sub: "There are many houses in our app",
    imgpath: "assets/images/undraw_Select_house_re_s1j9.png",
  ),
  Datamodel(
    count: 2,
    title: "Select Your Home Closer to Your\n Workplace",
    sub:
        "You can rent any house at any area, we provide rent option to almost \n 50 Area's",
    imgpath: "assets/images/undraw_Home_settings_re_pkya.png",
  ),
];
