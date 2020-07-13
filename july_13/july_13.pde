float rays = 0; //variable for sunrays



void setup () {
  //color for sky
  background(21, 188, 208);
  size(400, 400);
}

void draw() {

  //drawing sun
  noStroke();
  fill(255, 195, 0);
  circle(25, 20, 60);


  //drawing sun rays
  rays=0;
  while (rays < width) {
    rays = rays + 20;
    fill(255, 195, 0);
    noStroke();
    triangle(rays, 400, 16, 16, 20, 20);


    //drawing clouds
    fill(249, 252, 252);
    noStroke();
    ellipse(90, 50, 50, 30);


    fill(249, 252, 252);
    noStroke();
    ellipse(115, 40, 50, 30);


    fill(249, 252, 252);
    noStroke();
    ellipse(90, 33, 50, 30);


    //drawing second cloud
    fill(249, 252, 252);
    noStroke();
    ellipse(300, 80, 50, 30);


    fill(249, 252, 252);
    noStroke();
    ellipse(320, 60, 50, 30);


    fill(249, 252, 252);
    noStroke();
    ellipse(290, 65, 70, 40);


    //drawing the road/street
    fill(138, 139, 138);
    noStroke();
    rect(0, 360, 400, 500);


    // drawing the dashes in the street
    for (int dash = 10; dash<=400; dash = dash +100 ) {
      //https://discourse.processing.org/t/changing-shape-colors-in-loops/
      //^Since I wasnt sure how to use for() I used this wesbite
      fill(253, 255, 253);
      strokeWeight(3);
      rect(dash, 370, 80, 10);
    }
    
    //traffic light
    //pole
    fill(0);
    noStroke();
    rect(350, 320, 10, 400);
    

    //traffic light box
    stroke(0);
    strokeWeight(3);
    fill(100);
    rect(340, 300, 30, 60, 10);
    

    //traffic lights itself
    
    //1st light(red)
    strokeWeight(2);
    stroke(0);
    fill(199, 0, 57);
    circle(355, 312, 15);


    //2nd light(yellow)
    strokeWeight(2);
    stroke(0);
    fill(0);
    //fill(248, 226, 24);
    circle(355, 330, 15);


    //3rd light(green)
    strokeWeight(2);
    stroke(0);
    fill(0);
    //fill(14, 198, 16);
    circle(355, 348, 15);


    //I was going to have the traffic lights change color
    //But I wasnt sure how to
  }
}
