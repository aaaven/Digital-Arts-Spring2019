// Aven https://www.aven.cc
// Digital arts
// class website: https://www.aven.cc/digital-arts
// class repo: https://github.com/aaaven/digital-arts
// ICCI, Shanghai Jiao Tong University

// Lecture 02: Coding session - flowing time project demo in 30 mins


import processing.video.*;
Movie mov;
int newFrame = 0;

int col_num = 640;
int col_index = 0;

void setup() {
  size(640, 360);
  background(0);
  mov = new Movie(this, "transit.mov");  

  // Pausing the video at the first frame. 
  mov.play();
  //mov.jump(0);
  //mov.pause();
}



void draw() {
  //background(255);
  //jump to right frame
  float time_point = map(col_index, 0, col_num-1, 0, mov.duration());
  mov.jump(time_point);
  mov.read();
  //crop
  int x = int(col_index * mov.width /col_num);
  int w = int(mov.width/col_num);
  int h = mov.height;
  copy(mov, x, 0, w, h, x, 0, w, h);
  //draw cropped result
  
  col_index = col_index + 1;
  
}
