/*
Processing programming workshop, ICCI
 Intensive one
 Aven Le Zhou
 */

size(800, 600); //canvas size
colorMode(HSB, 100); //color: default RGBa or RGB
//background(50,70,70); //background color

background(100); //background color
int w = 500;
int h = 100;
fill(30,90,90);
noStroke();
ellipse(width/2, height/2, w, h);
float factor = 1.1; //factor control rect size 
// 1.1
factor = 2;
// 2

//fill(0);
noFill();
stroke(30,90,90);
strokeWeight(5);
rectMode(CENTER);
rect(width/2, height/2, w*factor, h*factor);

//data type
/*
float 
 int
 boolean: True False
 int()
 
 float aven = 1.1;
 int aven_int = int(aven);
 int aven_int2 = (int)aven;
 println("the first aven int: " + aven_int);
 println("the 2nd aven int: " + aven_int2);
 */
 
 
 
 
 
 
 
 
 //int addFunction(int a, int b){
 // int result = a + b + 1;
 // return result;
 //}
 
 //addFunction(123,321);
