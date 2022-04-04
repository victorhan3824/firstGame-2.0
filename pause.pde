void pause(){
  theme.pause();
  
  noStroke();
  fill(white);
  square(100,100,50);
  
  fill(gray);
  triangle(90,87,110,100,90,113);
  
}

void pauseClick() {
  if (mouseX > 70 && mouseX < 130 && mouseY > 70 && mouseY < 130) {
    mode = GAME;
  }
}
