class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("It is an African platform for developers with common interests to be part of Techie communities that allow you to be yourself.");
  sliderModel.setTitle("What is Maku5 all about?");
  sliderModel.setImageAssetPath("assets/maku5logo.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Maku5 believes in team work. One of the key features is you're able to turn conversations into projects with teams, that may eventually grow into a company.");
  sliderModel.setTitle("Team Work");
  sliderModel.setImageAssetPath("assets/teamwork.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("We've worked hard to ease the process of developers networking and marketing their products not only locally but also at wider scales across Africa and the globe, mainly focusig on the African region.");
  sliderModel.setTitle("Network and Marketing");
  sliderModel.setImageAssetPath("assets/networking.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}