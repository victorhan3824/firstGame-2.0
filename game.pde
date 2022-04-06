// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
void game() {
  theme.play();
  background(black);
  image(space,100,100,600,600);
  
  //display board
  fill(white);
  textSize(28);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);  

  //pause button
  if (mouseX > 70 && mouseX < 130 && mouseY > 70 && mouseY < 130) stroke(red);
  else stroke(white);
  fill(blue);
  rect(100, 100, 60, 60);

  //pause indicator
  noStroke();
  fill(gray);
  square(100, 100, 20);

  //display target ==================================
  hit = hit - 1;
  if (hit > 0) {
    fill(red);
  } else {
    noFill();
  }
  circle(x, y, targetSize); //draw the circle
  //draw the image displayed as apart of the target 
  image(targetMode,x-targetSize/2,y-targetSize/2,targetSize,targetSize); 

  //moving ==========================================
  x = x + (1+float(score)*(0.15+float(targetOrder)/20))*vx;
  y = y + (1+float(score)*(0.15+float(targetOrder)/20))*vy;

  //bouncing back
  if (x < targetSize/2 || x > width-targetSize/2 ) {
    vx = vx * -1;
  }
  if (y < targetSize/2 || y > height-targetSize/2 ) {
    vy = vy * -1;
  }
}

void gameClick() {
  if (dist(mouseX, mouseY, x, y) < targetSize*0.75) {
    score = score + 1 + targetOrder%2;
    hit = 3;
    if (targetOrder == 2 && score != 0 && score%10 == 0 && lives < 3){ //perks for using asteroid
      lives = lives + 1;
    }
    //sound effect ======================
    coin.rewind();
    coin.play();
  } else if (mouseX > 70 && mouseX < 130 && mouseY > 70 && mouseY < 130) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    if (lives == 0) {
      mode = GAMEOVER;
      gameEnd.rewind();
    }
    //sound effect ======================
    bump.rewind();
    bump.play();
  }
}
