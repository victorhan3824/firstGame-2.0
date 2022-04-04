void select() {
  background(black);
  home();
}

void selectClick(){
  if (mouseX > width/8-50 && mouseX < width/8+50 && mouseY > height/8-30 && mouseY < height/8+30) mode = INTRO;
}
