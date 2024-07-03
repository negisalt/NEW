int x1, y1, w1, h1;
void setup() {
  size(960, 540);
  noStroke();
  rectMode(CENTER);

  w1 = 640;
  h1 = 50;
}

void draw() {

  textSize(80);
  int red = (int)map(mouseX, 160, 800, 0, 255);

  if(lap(x1, y1)){
    background(red, 0, 0);
  }
  else background(0);
 
 if(lap(100, 100)){
    fill(0);
    text("GAMEOVER",300, 400);
 }

  fill(255);
  rect(160, 270, 100, 100, 10);//start
  rect(800, 270, 100, 100, 10);//goal
  rect(width/2, height/2, w1, h1);//road
  fill(0, 255, 0);
  text("S", 140, 295);
  fill(0, 0, 255);
  text("G", 770, 295);

}

//関数
boolean lap(int x, int y){
  float dist = dist(x, y, mouseX, mouseY);
  if(dist > 20){
    return true;
  }
  else return false;
}