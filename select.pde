void select() {
  background(black);
  home();
  
  optionsDisplay();
  slider();
}

void selectClick(){
  if (mouseX > width/8-50 && mouseX < width/8+50 && mouseY > height/8-30 && mouseY < height/8+30) mode = INTRO;
}

void optionsDisplay() {
  //choice 1
  choice(150,"1");
  //choice 2  
  choice(400,"2");
  //choice 3
  choice(650,"3");
}

void choice(int x, String label) {
  if (mouseX > x-100 && mouseX < x+100 && mouseY > 200 && mouseY < 400) {
    stroke(red);
    fill(pink);
  } else {
    stroke(white);
    fill(blue);
  }
  square(x,300,200);
  fill(white);
  text(label,x,175);
}

void slider() {
  //make slider tactile
  if (mouseX > 50 && mouseX < 350 && mouseY > 480 && mouseY < 520) stroke(red);
  else stroke(white);
  
  strokeWeight(5); //the line
  line(50,500,350,500);
  strokeWeight(2); //the circle
  fill(black);
  circle(sliderX,500,20) ;
  //size indicator
  stroke(white);
  circle(550,600,targetSize);
}
