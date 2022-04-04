void mouseReleased() {
  if (mode == INTRO) {
    introClick();
  } else if (mode == GAME) {
    gameClick();
  } else if (mode == PAUSE) {
    pauseClick();
  } else if (mode == GAMEOVER) {
    gameoverClick();
  } else if (mode == SELECT) {
    selectClick();
  } else if (mode == STAT) {
    statClick();
  }
}

void mouseDragged() {
  //slider control ======================
  if (mode == SELECT && mouseX > 50 && mouseX < 350 && mouseY > 480 && mouseY < 520){
    sliderX = mouseX;
  }
  targetSize = map(sliderX,50,350,50,200);
}

