PImage MinimizeSymbolImgBtn;
PImage FullScreenSymbolImgBtn;
PImage CloseSymboImgBtn;
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
    
  }
  
}

class IntroAnimation {
}

class HomePageBackgroundAnimation {
}
