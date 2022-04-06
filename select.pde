void select() {
  background(black);
  home();
  
  //determine what your unlockStatus is
  if (topScore > 10) unlockStatus = 1;
  if (topScore > 20) unlockStatus = 2;
  
  optionsDisplay();
  slider();
  
  //size and target indicator
  stroke(white);
  circle(550,600,targetSize);
  image(targetMode,550-targetSize/2,600-targetSize/2,targetSize,targetSize); 
}

void selectClick(){
  if (mouseX > width/8-50 && mouseX < width/8+50 && mouseY > height/8-30 && mouseY < height/8+30) mode = INTRO;
  
  //select which target you want to hit
  if (mouseX > 150-100 && mouseX < 150+100 && mouseY > 200 && mouseY < 400) {
    targetMode = dust;
    targetOrder = 0;
  }
  if (mouseX > 400-100 && mouseX < 400+100 && mouseY > 200 && mouseY < 400) {
    if (unlockStatus >= 1) { //determine whether you got access
      targetMode = scrap;
      targetOrder = 1;
    }
  } 
  if (mouseX > 650-100 && mouseX < 650+100 && mouseY > 200 && mouseY < 400) {
    if (unlockStatus == 2) { //determine whether you got access
      targetMode = rock;
      targetOrder = 2;
    }
  }
}

void optionsDisplay() {
  //choice 1
  choice(150,"Space Dust",dust,"low risk low reward","Default");
  //choice 2  
  choice(400,"Space Scrap",scrap,"high risk high reward","Highscore at least 10");
  //choice 3
  choice(650,"Asteroid",rock,"?????","Highscore at least 20");
}

void choice(int x, String label, PImage which, String description, String req) {
  if (unlockStatus >= (x-150)/250) { //determine whether you get access ====
    if (mouseX > x-100 && mouseX < x+100 && mouseY > 200 && mouseY < 400) {
      stroke(red);
      fill(pink);
    } else {
      stroke(white);
      fill(blue);
    }
    square(x,300,200);
    //display the image in the selection
    image(which,x-80,220,160,160);
  } else { // ==============================================================
    stroke(white);
    fill(gray);
    square(x,300,200);
    fill(white);
    textSize(28);
    text("LOCKED",x,300);
    textSize(14);
    text(req,x,350);
  }
  //the text for that image
  fill(white);
  textSize(25);
  text(label,x,175);
  textSize(14);
  text(description,x,450);

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
}
