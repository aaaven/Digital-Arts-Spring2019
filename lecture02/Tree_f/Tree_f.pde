// Aven https://www.aven.cc
// Digital arts
// class website: https://www.aven.cc/digital-arts
// class repo: https://github.com/aaaven/digital-arts
// ICCI, Shanghai Jiao Tong University

// Lecture 02: Coding session - fractal tree in 15 mins


float theta;   

void setup() {
  size(640, 360);
  strokeWeight(1);
  fill(255, 160, 249, 70);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  // Let's pick an angle 0 to 90 degrees based on the mouse position
  float a = (mouseX / (float) width) * 90f;
  // Convert it to radians
  theta = radians(a);
  // Start the tree from the bottom of the screen
  translate(width/2, height);
  // Draw a line 120 pixels
  line(0, 0, 0, -120);
  // Move to the end of that line
  translate(0, -120);
  // Start the recursive branching!
  branch(120, 1);
}

void branch(float h, float b) {
  // Each branch will be 2/3rds the size of the previous one
  h *= 0.66;
  b *= 1.3;

  // All recursive functions must have an exit condition!!!!
  // Here, ours is when the length of the branch is 2 pixels or less
  if (h > 2) {
    pushMatrix();    // Save the current state of transformation (i.e. where are we now)
    rotate(theta);   // Rotate by theta
    stroke(255);
    line(0, 0, 0, -h);  // Draw the branch
    noStroke();
    ellipse(0, -h, b, b);
    translate(0, -h); // Move to the end of the branch
    branch(h, b);       // Ok, now call myself to draw two new branches!!
    popMatrix();     // Whenever we get back here, we "pop" in order to restore the previous matrix state

    // Repeat the same thing, only branch off to the "left" this time!
    pushMatrix();
    rotate(-theta);
    stroke(255);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h, b);
    popMatrix();
  }
}
