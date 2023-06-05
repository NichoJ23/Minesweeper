void lose() {
  if (loseFrame/4 < cols * rows) {
    Cell c = cells[loseFrame/4 % cols][loseFrame/4 / cols];
    if (c.isBomb) {
      c.isFlipped = true;
      c.display();
    }
    loseFrame++;
  } else {
    noStroke();
    fill(red(#5EC4E8), green(#5EC4E8), blue(#5EC4E8), 20);
    rect(width/2, height/2, width, height);
    
    fill(#258947);
    rect(width/2, height/2, width*3/4, height*3/4);
    
    fill(255);
    textSize(100);
    text("You Lose!", width/2, height*2/5);
    
    for (ButtonShell b: loseButtons) {
      b.display();
    }
  }
  
  
}

void loseClicks() {
  for (ButtonShell b: loseButtons) {
    b.checkClick();
  }
}
