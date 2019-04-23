void setup() {
  size(800, 600);
  background(255, 0, 0);
}

void draw() {
  if (mousePressed) {
    background(random(255));
  }
}

void mouseReleased() {//mouse event
  background(0, 255, 0);
}

void mousePressed() {
  background(0, 0, 255);
}

void keyPressed() { 
  if (key == CODED) {
    // keyCode = UP
    if (keyCode == UP) {
    }
  }


  if (key == 'q') {
    fill(random(255));
    ellipse(width/2, height/2, 100, 100);
  }
  if (key == 'w') {
    fill(random(255));
    ellipse(width/2, height/2, 100, 100);
  }
  switch (key) {
  case 'q':
    println('q');
    break;
  case 'w':
    println('w');
    break;
  }
}
