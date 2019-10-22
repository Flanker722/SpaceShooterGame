PImage MinimizeSymbolImgBtn;
PImage FullScreenSymbolImgBtn;
PImage CloseSymbolImgBtn;
PImage HomePageSettingImgBtn;
PImage HomePageBackgroundImg;
PImage MaincharacterWalkingForwardAnimationCurrentFrame;
Boolean fullscreen = false;
Boolean fullscreenmode = false;
Boolean HomeScreen = false;
Boolean HomeScreenButtons = false;
Boolean HomeScreenLayout = false;
int MaincharacterPos;

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
    quad(200,380,495,380,495,440,200,440);
    
    fill(252, 202, 0);
    noStroke();
    quad(505,380,800,380,800,440,505,440);
    
    fill(255);
    PFont CalcuText = createFont("CalcuText.otf", 500);
    textFont(CalcuText, 80);
    text("Let's Go",235,425);
    textFont(CalcuText, 40);
    text("Wait a second, what?",515,418);
    
    color FullscreenButtonClr1 = get(200,6);
    color CloseButtonClr1 = get(5,5);
    
    if(HomeScreenButtons == true){
      if(fullscreenmode == false){
        if(mouseX >= 130 && mouseX <= 210){
          if(mouseY >= 0 && mouseY <= 40){
            if(mousePressed == true){
              color buttonclr = get(mouseX, mouseY);
              if(buttonclr == FullscreenButtonClr1){
                fullscreen = true;
                fullscreenmode = true;
              } 
            }
          }
        }
      } else if(fullscreenmode == true){
        if(mouseX >= 130 && mouseX <= 210){
          if(mouseY >= 0 && mouseY <= 40){
            if(mousePressed == true){
              color buttonclr = get(mouseX, mouseY);
              if(buttonclr == FullscreenButtonClr1){
                fullscreen = false;
                fullscreenmode = false;
              }
            }
          }
        }
      }
    }
    if(HomeScreenButtons == true){
      if(mouseX >= 0 && mouseX <= 70){
        if(mouseY >= 0 && mouseY <= 40){
          if(mousePressed == true){
            color buttonclr = get(mouseX, mouseY);
            if(buttonclr == CloseButtonClr1){
              exit();
            }
          }
        }
      }
    }
    
  }
  
  if(fullscreenmode == false){
    surface.setSize(1000,600);
    surface.setLocation((displayWidth/2)-500,(displayHeight/2)-300);
  }
  
  if(fullscreen == true){
    surface.setSize(displayWidth,displayHeight);
    surface.setLocation(displayWidth-displayWidth ,displayHeight-displayHeight);
    
    float disbackwidth = (displayHeight/1080)*1920;
    
    HomePageBackgroundImg = loadImage("SpaceGameBack.jpg");
    HomePageBackgroundImg.resize(int(disbackwidth), displayHeight);
    image(HomePageBackgroundImg,-(((HomePageBackgroundImg.width - displayWidth)/4)* 1.5),0);
    
    print();
    
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
    HomePageSettingImgBtn.resize(displayHeight/10,displayHeight/10);
    image(HomePageSettingImgBtn, displayWidth - ((displayHeight/10)+10), displayHeight - ((displayHeight/10)+10));
    
  }
  
}

class IntroAnimation {
}

class BackwardsWalk {
}

class JumpWalk {
}

class CrawlWalk{
}

class InspectItem{
}

class Inventory{
}

class Maincharacter{
}

class HomePageBackgroundAnimation {
}
