

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
  apple = loadImage("apple.png"); 
  basket = loadImage("basket.png");
  cloud = loadImage("cloud.png");
  appleXPosition= random(10, 590);
  basketXPosition = mouseX; //basket cooresponds with mouse
}

void draw()
{
  background(195, 251, 250);
  //code for apple falling
  image(apple, appleXPosition, appleYPosition, 50, 50);
  appleYPosition = appleYPosition + appleSpeed;
  //if apple hits floor
  if (appleYPosition > 400) {
    appleXPosition = random (10, 590);
    appleYPosition = 0;
  }
  //Getting basket to correlate with the mouse along x axis
  image(basket, mouseX, basketYPosition, 70, 70);
  //if the apple goes in the basket
  if (appleYPosition>=basketYPosition) {
    appleYPosition= 0;
    appleXPosition = random (10, 590);
    score = score + 1; //score increases by one
    //I couldn't figure out how to make it so that when the
    //apple specifically touches the basket you would gain a point
  }
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
}
