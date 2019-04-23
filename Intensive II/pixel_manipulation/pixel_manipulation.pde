PImage img;
PImage[] imgs;
int gridSize = 10;
int xCount;
int yCount; 
int index = 0;
void setup() {
  size(800, 600);
  imgs = new PImage[13];
  img = loadImage("frame-1.jpg");
  img.resize(width, height);

  xCount = int(width/gridSize);
  yCount = int(height/gridSize);

  noStroke();
}

void draw() {
  //image(img, 0, 0, width, height);
  for (int y = 0; y < yCount; y++) {
    for (int x = 0; x < xCount; x++) {
      int posX = x * gridSize;
      int posY = y * gridSize;
      color pix_col = img.get(posX, posY);
      if (x % 2 == 0 ) {
        println(posX);
        fill(pix_col);
        rect(posX, posY, gridSize, gridSize);
      }
    }
  }
}
