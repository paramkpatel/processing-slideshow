/*
 * Author: Param Patel
 * Description:
 *    In this assigment I made a slide show in processing. Also, used loadimage and keyPressed
 */
 
PImage backgroundimg;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
int Slides = 0;
String A = "Top 5 Favorite Athletes";
String B = "Lebron James";
String C = "Babe Ruth";
String D = "Messi";
void setup() {       // Size and loading images
  size(700, 500);
  backgroundimg = loadImage("bk.jpg");
  img1 = loadImage("atl.jpg");
  img2 = loadImage("cle.jpg");
  img3 = loadImage("pet.jpg");
  img4 = loadImage("chris.jpg");
  textSize(25);
}
void draw() {         //Background and Slides 1-4
  image(backgroundimg, 0, 0, 700, 500);
  Slide();
  Slide2();
  Slide3();
  Slide4();
}
void Slide() {
  if (Slides ==0) {   //First Slide
    text(""+A, 250, 50);
    image(img1, 130, 100, 400, 300);
    fill(255, 0, 0);
    text("DISCLAMER: This is my Top 5. \n You can have different Top 5.", 50, 450);
  }
}
void Slide2() {
  if (Slides == 1) {     //Second Slide
    text(""+B, 250, 50);
    image(img2, 130, 100, 400, 300);
    text("I like Lebron because he wins championships and \n plays for the Cleveland Lakers.", 50, 450);
  }
}
void Slide3 () {
  if (Slides == 2) {     // Third Slide
    text(""+C, 250, 50);
    image(img3, 130, 100, 400, 300);
    text("I like Babe Ruth because he played for the Boston Red Sox.\n I like him as a player but never got to see him play.", 50, 450);
  }
}
void Slide4 () {
  if (Slides == 3) {       // Fourth Slide
    text(""+D, 250, 50);
    image(img4, 130, 100, 400, 300);
    text("Messi poor Messi he carries but his team is bad \n so he will be always sad. :'(", 50, 450);
  }
}
void keyPressed() {   //Key Z and M to change slide
  if (key == 'z') {
    Slides -= 1;
  } else if (key == 'm') {
    Slides +=1;
  }
}
