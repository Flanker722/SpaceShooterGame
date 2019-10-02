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
}

class IntroAnimation {
}

class HomePageBackgroundAnimation {
}
