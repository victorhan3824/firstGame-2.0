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

  //display target
  hit = hit - 1;
  if (hit > 0) {
    fill(red);
  } else {
    fill(255);
  }
  stroke(0);
  circle(x, y, targetSize); 

  //moving
  x = x + (1+float(score)*0.15)*vx;
  y = y + (1+float(score)*0.15)*vy;

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
    score = score + 1;
    hit = 3;
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
