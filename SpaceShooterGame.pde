PImage MinimizeSymbolImgBtn;
PImage FullScreenSymbolImgBtn;
PImage CloseSymbolImgBtn;
PImage HomePageSettingImgBtn;
PImage HomePageBackgroundImg;
Boolean HomeScreen = true;
Boolean HomeScreenLayout = true;

void settings(){
  fullScreen();
}

void setup(){
  surface.setSize(1000,600);
  surface.setLocation((displayWidth/2)-500,(displayHeight/2)-300);
}

void draw(){
  HomeScreen();
}

void HomeScreen(){
  
  if(HomeScreenLayout == true){
    fill(123);
    noStroke();
    rect(0,0,212,40);
    
    fill(123);
    noStroke();
    rect(920,520,80,80);
    
    fill(160);
    noStroke();
    rect(680,520,240,80);
    
    fill(123);
    noStroke();
    rect(200,380,600,60);
    
    fill(123);
    noStroke();
    rect(140, 150, 720, 220);
  }
  
  if(HomeScreen == true){
    
    HomePageBackgroundImg = loadImage("SpaceGameBack.jpg");
    HomePageBackgroundImg.resize(1066,600);
    image(HomePageBackgroundImg,-20,0);
    
    fill(255,3,3);
    noStroke();
    quad(0,0,71,0,61,40,0,40);
    
    fill(255, 221, 51);
    noStroke();
    quad(70,0,141,0,131,40,60,40);
    
    fill(140, 219, 13);
    noStroke();
    quad(140,0,210,0,200,40,130,40);
    
    strokeWeight(4);
    stroke(230, 0, 0);
    line(0,0,68,0);
    line(0,38,58,38);
    line(2,0,2,38);
    line(68,0,58,38);
    
    stroke(230,200,0);
    line(138,0,128,38);
    line(72,0,62,38);
    line(138,0,72,0);
    line(128,38,62,38);
    
    stroke(55,200,0);
    line(142,0,132,38);
    line(198,38,208,0);
    line(142,0,208,0);
    line(132,38,198,38);
    
    MinimizeSymbolImgBtn = loadImage("MinimizeBtn.png");
    MinimizeSymbolImgBtn.resize(38,6);
    image(MinimizeSymbolImgBtn,85,16);
    
    FullScreenSymbolImgBtn = loadImage("FullScreenBtn.png");
    FullScreenSymbolImgBtn.resize(27,27);
    image(FullScreenSymbolImgBtn,158,6);
    
    CloseSymbolImgBtn = loadImage("CloseBtn.png");
    CloseSymbolImgBtn.resize(27,28);
    image(CloseSymbolImgBtn, 20, 6);
    
    HomePageSettingImgBtn = loadImage("SettingsHomePageBtn.png");
    HomePageSettingImgBtn.resize(60,60);
    image(HomePageSettingImgBtn, 930,530);
    
    fill(252, 202, 0);
    noStroke();
    quad(200,380,510,380,484,440,200,440);
    
    fill(252, 202, 0);
    noStroke();
    quad(514,380,800,380,800,440,488,440);
    
    fill(255);
    PFont CalcuText = createFont("CalcuText.otf", 500);
    textFont(CalcuText, 80);
    text("Let's Go",235,425);
    textFont(CalcuText, 40);
    text("Wait a second, what?",515,418);
    
    quad(509,380,515,380,489,440,483,440);
    
  }
  
}

class IntroAnimation {
}

class HomePageBackgroundAnimation {
}
