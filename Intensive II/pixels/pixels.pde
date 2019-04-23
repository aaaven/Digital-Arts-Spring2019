int gridSize = 2;
int xCount, yCount, index = 0;

void setup() {
  size(800, 600);
  background(0);
  xCount = int(width/gridSize);
  yCount = int(height/gridSize);
  noStroke();
  colorMode(HSB, 100);
}

void draw() {
  int posX = index % xCount;
  int posY = int(index/xCount);

  int hue = int(map(posX, 0, xCount, 0, 100));
  int bri = int(map(posY, 0, yCount, 100, 0));
  fill(hue, 70, bri);
  rect(posX*gridSize, posY*gridSize, gridSize, gridSize);

  index ++;
}
