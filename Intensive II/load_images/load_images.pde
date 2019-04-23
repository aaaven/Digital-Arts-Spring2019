PImage img;
PImage[] imgs;

void setup() {
  size(800, 600);
  imgs = new PImage[13];
  img = loadImage("frame-1.jpg");
  img.resize(width, height);
}

void draw() {
  image(img, 0, 0, width, height);
}
