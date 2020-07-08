

  size(400,400);
  smooth();
  strokeWeight(1);
  
//setting the background blue for the sky
  background(23, 193, 214);
 

//trying to make the sand
  fill(194, 178, 128);
  stroke(194, 178, 128);
  arc(200, 400, 600, 200, 0, PI*2);


//trying to make the clouds
//Just 3 circles
  fill(241, 246, 246);
  stroke(241, 246, 246);
  arc(200, 100, 100, 50, 0, PI*2);


  fill(241, 246, 246);
  stroke(241, 246, 246);
  arc(210, 130, 100, 50, 0, PI*2);


  fill(241, 246, 246);
  stroke(241, 246, 246);
  arc(270, 115, 100, 50, 0, PI*2);
//done making clouds


//Im going to make the sun
  fill(242, 224, 8);
  stroke(242, 224, 8);
  arc(380, 0, 75, 75, 0, PI*2);


//making a tree 
//Im going to make the tree stump
  fill(198, 151, 75);
  stroke(198, 151, 75);
  rect(50, 300, 20, 100);


//Im going to make the leaves
  fill(56, 145, 35);
  stroke(56, 145, 35);
  arc(60, 250, 110, 110, 0, PI*2);


//making a lake
  fill(13, 104, 217);
  stroke(13, 104, 217);
  arc(200, 410, 450, 100, 0, PI*2);


//making a tree branch
  fill(198, 151, 75);
  stroke(198, 151, 75);
  rotate(radians(-20));
  rect(-73, 310, 3, 40);
//when I had the tree branch code above the lake code
//it was rotated so I put it under the lake code

//I couldnt import a photo of myself
//(This is my first time using Processing)
//But I uploaded a picture of myself ontop of the sketch 
//Through a seperate application/photoshop
