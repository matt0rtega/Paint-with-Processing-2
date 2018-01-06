int x;
int y;

void setup(){
  size(500, 500);
  background(0);
  
  x = width/2;
  y = height/2;
}

void draw(){
  
  noStroke();
  fill(255);
  ellipse(mouseX + x, mouseY + y, 2, 2);
  
  x = (int)map(sin(frameCount * 0.02), -1, 1, -100, 100);
  y = (int)map(cos(frameCount * 0.1), -1, 1, -100, 100);
  
}

void mousePressed(){
  saveFrame("paintProc1.png");
}