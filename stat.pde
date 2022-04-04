void stat() {
  background(black);
  home();
  
  scatterPlot();
  statChart();
}

void statClick() {
  if (mouseX > width/8-50 && mouseX < width/8+50 && mouseY > height/8-30 && mouseY < height/8+30) mode = INTRO;
}

void statChart() {
  //stat calculations ========================
  float avg = float(scoreSum)/float(gameSum);
  if (gameSum == 0) avg = 0;
  int min = timeSum/60;
  int sec = timeSum%60;
  float avgPlay = float(timeSum)/gameSum; 
  if (gameSum == 0) avgPlay = 0;
  
  //chart display ============================
  fill(blue);
  stroke(white);
  rect(350,300,600,300);
  //seperation bars
  line(50,200,650,200);
  line(50,250,650,250);
  line(50,300,650,300);
  line(50,350,650,350);
  line(50,400,650,400);
  //stat display =============================
  fill(white);
  textSize(25);
  text("All time best: " + topScore, 350, 175);
  text("Total games played: " + gameSum, 350, 225);
  text("Cumulative score: " + scoreSum, 350, 275);
  text("Average score: " + nf(avg,0,2), 350, 325);
  text("Total Playtime: " + min + " min " + sec + " sec", 350, 375);
  text("Pergame playtime: " + nfs(avgPlay,0,1) + " sec", 350, 425);
}

void scatterPlot() {
  //base display ============================
  fill(blue);
  stroke(white);
  rect(350,625,600,300);
  //axis and marker
  fill(white);
  line(100,475,100,775); //x-axis
  line(50,725,650,725); //y- axis
  textSize(18);
  text("50",75,625);
  text("100",75,525);
  text("25",75,675);
  text("75",75,575);
  
  //data display ===========================
  strokeWeight(3);
  point(1);
  point(2);
  point(3);
  point(4);
  point(5);
  point(6);
  point(7);
  point(8);
  point(9);
  point(10);
  point(11);
  point(12);
}

void point(int order) {
  fill(white);
  if (pastScore.size() >= order) circle(50+order*50,725-pastScore.get(order-1)*2,5);
  //connection lines
  //if (order > 1) line(50+(order-1)*50,725-pastScore.get(order-2)*2,50+order*50,725-pastScore.get(order-1)*2);
  //if (order >= 2) print(pastScore.get(order-2));
}
