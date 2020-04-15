void plotFunctionDots() {
  for(float i = 50 - originX; i < width - originX - 50; i++) {
    float x = i / pixelScaleX;
    float y = function(x);
    if(originY - y * pixelScaleY >= 50 && originY - y * pixelScaleY <= height - 50)
    point(originX + i, originY - y * pixelScaleY);
  }
}

void plotFunctionCurve() {
  noFill();
  beginShape();
  for(float i = 50 - originX - 1; i < width - originX - 50; i++) {
    float x = i / pixelScaleX;
    float y = function(x);
    if(originY - y * pixelScaleY > 0 && originY - y * pixelScaleY < height)
    curveVertex(originX + i, originY - y * pixelScaleY);
  }
  endShape();
}

void drawAxes() {
  line(originX, 50, originX, height - 50);
  line(50, originY, width - 50, originY);
  line(originX, 50, originX + 10, 60);
  line(originX, 50, originX - 10, 60);
  line(originX, height - 50, originX + 10, height - 60);
  line(originX, height - 50, originX - 10, height - 60);
  line(50, originY, 60, originY + 10);
  line(50, originY, 60, originY - 10);
  line(width - 50, originY, width - 60, originY + 10);
  line(width - 50, originY, width - 60, originY - 10);
}

void drawPositiveAxes() {
  line(originX, originY, originX, 50);
  line(originX, originY, width - 50, originY);
  line(originX, 50, originX + 10, 60);
  line(originX, 50, originX - 10, 60);
  line(width - 50, originY, width - 60, originY + 10);
  line(width - 50, originY, width - 60, originY - 10);
}

void drawMarks(int spacing) {
  drawHorizontalMarks(spacing);
  drawVerticalMarks(spacing);
}

void drawHorizontalMarks(int spacing) {
  textAlign(CENTER, TOP);
  for(int i = 1; i < (width - originX - 50) / (pixelScaleX * spacing) + 1; i++) {
    line(originX + i * pixelScaleX * spacing, originY - 3, 
         originX + i * pixelScaleX * spacing, originY + 3);
    text(i * spacing, originX + i * pixelScaleX * spacing, originY + 10);
  }
  for(int i = 1; i < (originX - 50) / (pixelScaleX * spacing) + 1; i++) {
    line(originX - i * pixelScaleX * spacing, originY - 3, 
         originX - i * pixelScaleX * spacing, originY + 3);
    text(-i * spacing, originX - i * pixelScaleX * spacing, originY + 10);
  }
}

void drawVerticalMarks(int spacing) {
  textAlign(RIGHT, CENTER);
  for(int i = 1; i < (height - originY - 50) / (pixelScaleY * spacing) + 1; i++) {
    line(originX - 3, originY + i * pixelScaleY * spacing, 
         originX + 3, originY + i * pixelScaleY * spacing);
    text(-i * spacing, originX - 10, originY + i * pixelScaleY * spacing);
  }
  for(int i = 1; i < (originY - 50) / (pixelScaleY * spacing) + 1; i++) {
    line(originX - 3, originY - i * pixelScaleY * spacing, 
         originX + 3, originY - i * pixelScaleY * spacing);
    text(i * spacing, originX - 10, originY - i * pixelScaleY * spacing);
  }
}

void drawGrid(float spacing) {
  drawHorizontalGrid(spacing);
  drawVerticalGrid(spacing);
}

void drawVerticalGrid(float spacing) {
  for(int i = 1; i < (width - originX - 49) / (pixelScaleX * spacing); i++) {
    line(originX + i * pixelScaleX * spacing, 50, 
         originX + i * pixelScaleX * spacing, height - 50);
  }
  for(int i = 1; i < (originX - 49) / (pixelScaleX * spacing); i++) {
    line(originX - i * pixelScaleX * spacing, 50, 
         originX - i * pixelScaleX * spacing, height - 50);
  }
}

void drawHorizontalGrid(float spacing) {
  for(int i = 1; i < (height - originY - 49) / (pixelScaleY * spacing); i++) {
    line(50, originY + i * pixelScaleY * spacing, 
         width - 50, originY + i * pixelScaleY * spacing);
  }
  for(int i = 1; i < (originY - 49) / (pixelScaleY * spacing); i++) {
    line(50, originY - i * pixelScaleY * spacing, 
         width - 50, originY - i * pixelScaleY * spacing);
  }
}
