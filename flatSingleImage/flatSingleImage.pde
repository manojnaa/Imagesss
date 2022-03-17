//Global Variables
float imageX, imageY, imageWidth, imageHeigth;
PImage pic;
//
size(600, 300);
//Population
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth;
imageHeigth = displayHeight;
pic = loadImage("flowers.jpg"); //Dimesions: width 600, height 300
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeigth);
image(pic, imageX, imageY, imageWidth, imageHeigth);
