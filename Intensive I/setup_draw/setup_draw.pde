int w, h, counter = 0;
void setup() {
  //run only once
  size(800, 600);
  rectMode(CENTER);
  textSize(30);
  frameRate(30);
  w = 200;
  h = 100;
  colorMode(HSB, 100);
  strokeWeight(3);
}

void draw() {
  //loop
  //background(100);
  //map(): map(source,source_range_min, source_range_max, target_range,_)
  int color_hue = int(map(mouseX, 0, width, 60, 80));
  int color_sat = 40;
  int color_b = int(map(mouseY, 0, height, 80, 100));
  if (counter < 200) {
    fill(color_hue, color_sat, color_b);
    stroke(100-color_hue,color_sat,color_b);
      rect(random(width), random(height), random(w), random(h));
    //float r = random(0, 100);
    //println(r);
    //fill(10,50);
    //text(r, random(width), random(height));
  } else {
    //counter = 0;
    //background(100);
  }
  counter ++;
  println(counter);
}

void mouseClicked() {
  //if mouse clicked, run the following code once
  counter = 0;
  background(100);
}
