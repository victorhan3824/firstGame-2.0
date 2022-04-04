//.....
//......
//.......
void intro(){
  theme.play();
  
  background(black);
  image(introBack,0,0,1600,1600);
  gameStartButton();
  selectButton();
  statButton();
  
  fill(white);
  textSize(72);
  text("Aste-rid",width/2,0.375*height);
}

void introClick() {
  if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > 470 && mouseY < 520) {
    mode = GAME;
    gameSum = gameSum + 1;
    //time start recording
    startH = hour();
    startM = minute();
    startS = second();
  }
  if (mouseX > width/4-60 && mouseX < width/4+60 && mouseY > 470 && mouseY < 520) mode = SELECT;
  if (mouseX > width*0.75-60 && mouseX < width*0.75+60 && mouseY > 470 && mouseY < 520) mode = STAT;
}

//other functions ================================================================

void gameStartButton() {
  if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > 470 && mouseY < 520){
    stroke(red);
    fill(pink);
  } else {
    stroke(black);
    fill(white);
  }
  rect(width/2,500,200,60);  

  fill(black);
  textSize(24);
  text("START",400,500);
}

void selectButton() {
  if (mouseX > width/4-60 && mouseX < width/4+60 && mouseY > 470 && mouseY < 520){
    stroke(red);
    fill(pink);
  } else {
    stroke(black);
    fill(white);
  }
  rect(width/4,500,120,60);  

  fill(black);
  textSize(22);
  text("OPTIONS",width/4,500);
}

void statButton() {
  if (mouseX > width*0.75-60 && mouseX < width*0.75+60 && mouseY > 470 && mouseY < 520){
    stroke(red);
    fill(pink);
  } else {
    stroke(black);
    fill(white);
  }
  rect(width*0.75,500,120,60);  

  fill(black);
  textSize(24);
  text("STATS",width*0.75,500);
}
