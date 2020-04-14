
import peasy.PeasyCam;
PImage img;
PShape globe;
PFont roboto;

PeasyCam cam; //This is a 3D Library
boolean a = false;
int value = 0;
int magenta=0;
int zDepth=50;  


public void settings() {
  size(1000, 800, P3D); //size of canvas, 3D canvas referenced
}


 
public void setup() {
  cam = new PeasyCam(this, 500); //calling 3D library, allowing to rotate in a 3D space
  //perspective(PI/3,width/(float)height,0.01,1000);
  // By default, the camera is in "free rotation" mode, but you can
// constrain it to any axis, around the look-at point:
cam.setYawRotationMode();   // like spinning a globe
//cam.setPitchRotationMode(); // like a somersault
//cam.setRollRotationMode();  // like a radio knob
//cam.setSuppressRollRotationMode();  // Permit pitch/yaw only.
    cam.setMinimumDistance(100);
    cam.setMaximumDistance(100);
    img = loadImage("Science-Fair.jpg");
     globe = createShape(SPHERE, 10);
     globe.setTexture(img);
roboto = createFont("Roboto-Regular.ttf", 32);
}


public void draw() {
  textFont(roboto);
  lights(); //giving the spheres depth
  noStroke();
  scale(9, 9, 9); //lets you zoom in and out on objects
  //strokeWeight(2 / 10f); //thickness of stroke lines
  background (0);//(255, 255, 255); //color of background//(0);//
  //image(img, 50, 50, -50, -50);
  //img = loadImage("Science-Fair.jpg");
  text("Welcome to the 2021 Virtual Science Fair!", -300, -80, -500); 
  //text("Behavioral & Social Sciences", -100, -40, -200); 
  //text("Engineering: Elect & Mech", 90, -40, -200); 
  //text("Computer & Math Sciences", 0, -40, -200); 
  // text("Earth & Planetary Science", 0, -40, -200); 
  //  text("Energy & Transport / Eng Matls", 0, -40, -200); 
  //   text("Environmental Management/ Environmental Sciences", 0, 40, -200); 
  //    text("Medicine & Health Sciences", 0, -40, -200); 
  //    text("Microbiology, Cellular, Molecular Bio", 0, -40, -200); 
  //    text("Physics & Astronomy", 0, -40, -200); 
  //    text("Plant Sciences", 0, -40, -200); 
  //    text("Inventions", 0, -40, -200); 
  //    text("Senior (high school)", 0, -40, -200); 
  //    text("Special Awards (awarded across categories and ages)", 0, -40, -200); 

  fill(255);

  
 //HOME POSITION
  pushMatrix(); //creates array on top of current coordinate system
  translate(0, 0, 0); //HOME position
  popMatrix(); //deletes the array
 
  
 //magenta ball below 
pushMatrix();
translate(0, 0, -100);
fill(139,0,139);
sphere(10);
popMatrix();
textSize(12);


//green ball below
pushMatrix();
translate(0, 0, -70);
fill(0,255,0);
sphere(10);
popMatrix();


//orange ball below
pushMatrix();
translate(-90, 0, -40);
fill(240,155,50);
sphere(10);
popMatrix();


//pink ball
pushMatrix();
translate(0, 20, 35);
shape(globe, -20, -20, -20, -20);
popMatrix();

//blue ball
pushMatrix();
translate(-100, 0, 10);
fill(50,155,200);
sphere(10);
popMatrix();

//pink ball
pushMatrix();
translate(90, 0, 35);
fill(246,55,230);
sphere(10);
popMatrix();

//yellow ball
pushMatrix();
translate(0, 0, 60);
fill(246,239,52);
sphere(10);
popMatrix();

//light green ball
pushMatrix();
translate(0, 0, 85);
fill(52,246,148);
sphere(10);
popMatrix();

//dark blue ball
pushMatrix();
translate(0, 0, 110);
fill(37,5,170);
sphere(10);
popMatrix();

pushMatrix();
translate(0, 0, 110);
fill(37,5,170);
sphere(10);
popMatrix();




 } 
