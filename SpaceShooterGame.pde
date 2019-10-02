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
    fill(255,255,255);
    noStroke();
    quad(0,0,71,0,61,40,0,40);
    
    fill(240,240,240);
    noStroke();
    quad(70,0,141,0,131,40,60,40);
    
    fill(230,230,230);
    noStroke();
    quad(140,0,210,0,200,40,130,40);
  }
  
}

class IntroAnimation {
}

class HomePageBackgroundAnimation {
}
