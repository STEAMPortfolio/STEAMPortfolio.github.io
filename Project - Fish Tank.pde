var greenFishX = -150;

var greenFishY = 300;

var drawFish = function(bX, bY, bL, bH) { //body X, body Y, body Length, body Height

var centerX = bX;
var centerY = bY;
var bodyLength = bL;
var bodyHeight = bH;
var bodyColor = color(162, 0, 254); //purple

noStroke();
fill(bodyColor);
// body
ellipse(centerX, centerY, bodyLength, bodyHeight);
// tail
var tailWidth = bodyLength/4;
var tailHeight = bodyHeight/2;
triangle(centerX-bodyLength/2, centerY,
         centerX-bodyLength/2-tailWidth, centerY-tailHeight,
         centerX-bodyLength/2-tailWidth, centerY+tailHeight);
// eye
fill(60, 60, 120); //dark blue eyes
ellipse(centerX+bodyLength/4, centerY, bodyHeight/5, bodyHeight/5);

};

var drawGreenFish = function(bX, bY, bL, bH) { //body X, body Y, body Length, body Height

var centerX = bX;
var centerY = bY;
var bodyLength = bL;
var bodyHeight = bH;
var bodyColor = color(0, 161, 3); //purple

noStroke();
fill(bodyColor);
// body
ellipse(centerX, centerY, bodyLength, bodyHeight);
// tail
var tailWidth = bodyLength/4;
var tailHeight = bodyHeight/2;
triangle(centerX-bodyLength/2, centerY,
         centerX-bodyLength/2-tailWidth, centerY-tailHeight,
         centerX-bodyLength/2-tailWidth, centerY+tailHeight);
// eye
fill(0, 0, 0); //dark blue eyes
ellipse(centerX+bodyLength/4, centerY, bodyHeight/5, bodyHeight/5);

};

var drawGround = function(sX, sY) { //function for the ground
    fill(166, 119, 0);
    rect(sX, sY, 500, 100);
};


var draw = function() {
    background(89, 216, 255); //light blue background
    drawGround(-329, 361); //tall ground
    drawGround(-76, 376);  //low ground
    
    drawGreenFish(greenFishX, greenFishY, 150, 100); //moving fish
    
    drawFish(180, 74, 100, 100); //middle fish
    drawFish(199, 338, 15, 15); //big bottom fish
    drawFish(67, 96, 40, 40);   //top left fish
    drawFish(336, 63, 124, 124);  //top right fish
    greenFishX += 2;
    
    if(greenFishX === 500) { //moving fish moves back
        greenFishY -= 75;
        greenFishX = -150;
    }
    /*
    if(greenFishX > 295) {
        if(greenFishY < 5) {
        fill(255, 0, 0);
        ellipse(100, 100, 100, 100)
    }*/
};
