//importing sound through minim 
//I tried to use Soundfile but it didn't work
//I didnt know how to use minim before but the video
//"processing: how to play music using minim"
//by curtis's channel on Youtube helped a lot

import ddf.minim.*;

Minim minim;

AudioPlayer player;



//loading images
PImage apple;
PImage basket;
PImage cloud;

//variables
float appleSpeed = 3; //speed that apple is falling
float appleXPosition; 
float appleYPosition = 0;
float score = 0;
float basketXPosition; 
float basketYPosition = 310;
float basketpoint;
float grass;



void setup() 
{
  size(600, 400);
  background(195, 251, 250);
  smooth();
  //loading images
  apple = loadImage("apple.png"); 
  basket = loadImage("basket.png");
  cloud = loadImage("cloud.png");

  //where apples spawn on X axis
  appleXPosition= random(10, 590);
  //making the x axis of the basket correspond with the mouse
  basketXPosition = mouseX; 


  //new mp3 file imported (falling noise for apples)
  minim = new Minim(this);
  player = minim.loadFile("Fallingsound.mp3");
}


void draw()
{
  //blue sky
  background(195, 251, 250);

  //scoreboard
  fill(0);
  text(score, 550, 20);

  //grass on ground
  fill(139, 241, 174);
  ellipse(300, 400, 600, 40);

  //Clouds
  image(cloud, 100, 20, 60, 60);
  image(cloud, 300, 40, 80, 80);
  image(cloud, 500, 25, 80, 80);


  //code for apple falling
  image(apple, appleXPosition, appleYPosition, 50, 50);
  appleYPosition = appleYPosition + appleSpeed;

  //making noise when apple falls
  if (appleYPosition <= 5) {
    player.play();
  }
  //stopping noise once apple hits the floor
  if (appleYPosition>= 350) {
    minim.stop();
    player.close();
    //How do I get it to play and stop everytime
    //the apple hits the floor and appears at the top,
    //not just on the first apple? 
    //Posted my question on Processing Fourms
  }

  //if apple hits floor
  if (appleYPosition >= 350) {
    appleXPosition = random (10, 590);
    appleYPosition = 0;
  }
  //Getting basket to correlate with the mouse along x axis
  image(basket, mouseX, basketYPosition, 70, 70);


  //if the apple goes in the basket
  if (appleYPosition== basketXPosition) {
    appleYPosition= 0;
    appleXPosition = random (10, 590);
    score = score + 1; //score increases by one
    //I couldn't figure out how to make it so that when the
    //apple specifically touches the basket you would gain a point
  }



  //if score gets to 10 show "gameover" on screen
  if (score == 10) {
    background (225);
    fill(0);
    text("gameover", 280, 200, 500, 200);

  }
}
