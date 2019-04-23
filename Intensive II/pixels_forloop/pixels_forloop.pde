int gridSize = 10;
int xCount;
int yCount; 
int index = 0;
int plus = 10;
void setup() {
  size(800, 600);
  background(0);
  xCount = int(width/gridSize);
  yCount = int(height/gridSize);
  noStroke();
  colorMode(HSB, 100);
}

void draw() {
  for (int y = 0; y < yCount; y++) {
    //loop every row
    for (int x = 0; x < xCount; x++) {
      //loop through every pixel in the row 
      //x,y
      int posX = x * gridSize;
      int posY = y * gridSize;
      int hue = int(map(posX, 0, width, 0, 100));
      int bri = int(map(posY, 0, height, 100, 0));
      fill(hue, 70, bri);
      rect(posX, posY, gridSize, gridSize);
    }
  }
  
  gridSize += plus;
  if (gridSize > 200 || gridSize < 10) {
    plus *= -1;
  }

  //gridSize = int(map(mouseX, 0, width, 10, 200));
}
