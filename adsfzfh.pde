/*Rafael And Don, drawing of UCSC Program 2*/

void setup() {
  size(500, 500);
  background(49, 240, 255);
  frameRate= 30;
}

//background settings//
int sky1 = 49;
int sky2 = 240;
int sky3 = 255;
int skyset = 0;
int skysetSpd = 1;
int skyset1, skyset2, skyset3;

float cloud= random(20, 100); 
float cloudposX = random(500);
float cloudposY = random(350, 500);


//sun settings//
float sun = 50;
float sunSpd = 2;


void draw() {

  //background//
  
  skyset1 = sky1 - skyset;
  skyset2 = sky2 - skyset;
  skyset3 = sky3 - skyset;
  background(skyset1, skyset2, skyset3);
  skyset = skyset + skysetSpd;

  //Sun//

  fill(255, 255, 0);
  noStroke();
  ellipse(450, sun, 175, 175);
  sun = sun + sunSpd;


  //grass//

  fill(0, 260, 0);
  rect(0, 500, 500, 325);

  //House//

  rectMode(CENTER);
  fill(137, 107, 25);
  strokeWeight(3);
  rect(250, 350, 150, 125);
  strokeWeight(3);
  fill(227, 221, 206);
  triangle(175, 285.5, 250, 200, 325, 285.5);
  textSize(32);
  fill(240, 245, 20);
  text("UCSC", 210, 325);

  //Trees//

  rectMode(CORNERS);
  fill(82, 25, 20);
  rect(50, 300, 75, 450);
  fill(0, 200, 0);
  ellipse(62.5, 325, 75, 75);

  rectMode(CORNERS);
  fill(82, 25, 20);
  rect(450, 300, 425, 450);
  fill(0, 200, 0);
  ellipse(437.5, 325, 75, 75);
  
  //if statement that makes a moon once background turns black, otherwise doesnt
  
  if (skyset1 <= 0 && skyset2 <= 0 && skyset3 <= 0) {
    fill(255);
    noStroke();
    ellipse(0, 0, 40, 40);
  }
  
  println(skyset1, skyset2, skyset3);
  
}

//reset the animation//
void keyPressed() {
  sun=0; 
  sky1=49;
  sky2=240;
  sky3=255;
  skyset=0;
}