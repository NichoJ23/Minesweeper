void menu() {
  background(#258947);
  
  fill(255);
  textSize(75);
  text("MINESWEEPER", width/2, height*2/5);
  
  for (ButtonShell b: menuButtons) {
    b.display();
  }
}

void menuClicks() {
  for (ButtonShell b: menuButtons) {
    b.checkClick();
  }
}
