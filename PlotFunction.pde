int originX, originY, pixelScaleX, pixelScaleY; //<>//

/* this is the function that will be plotted. It should return the y value for a 
   given x value. */
float function(float x) {
  float y = sq(x);
  return y;
}

void setup() {
  size(800, 600);
  
  /* coordinates of origin, defaults to center of canvas
     change to x = 50; y = height - 50; if only using first quadrant */
  originX = width/2;
  originY = height/2;
  
  /* how many pixels are one unit in x/y direction? */
  pixelScaleX = 20;
  pixelScaleY = 20;
  
  background(255);
  noLoop();
}

void draw() {
  
  noFill();
  stroke(128);
  
  /* parameter specifies spacing between grid lines (in units) */
  drawGrid(5);
  
  /* use these if spacing between horizontal and vertical grid lines should be different.
     if used, comment out the normal drawGrid() */
  //drawHorizontalGrid(5);
  //drawVerticalGrid(5);
  
  strokeWeight(2);
  stroke(0);
  
  /* draws x and y axes */
  drawAxes();
  
  /* use this if only drawing first quadrant */
  //drawPositiveAxes();
  
  fill(0);
  
  /* draws the marks on each axes. 
     The parameter specifies the spacing between each mark */
  drawMarks(5);
  
  /* use these if spacing should be different on x and y axes */
  //drawHorizontalMarks(5);
  //drawVerticalMarks(5);
  
  /* change this color to anything you want */
  stroke(0, 0, 255);
  
  /* this plots the function as dots in the graph */
  //plotFunctionDots();
  
  /* this plots the function as a curve */
  plotFunctionCurve();
  
  noStroke();
  fill(255);
  rect(0, 0, width, 49); // covers up anything that goes above the top
  textAlign(CENTER, BOTTOM);
  textSize(24);
  fill(0);
  text("Title", width/2, 40); // put your title in here
}
