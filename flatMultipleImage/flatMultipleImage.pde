//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
//Geometry
size(900,680);//fullScreen(); displayWidth, displayHeight
//Landscape Presentation, not square or protrait
//
//Populating Variables
pic1 = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimensions: 800 width, 600 height
pic2 = loadImage("beautiful-hologram-water-color-frame-png_119551.jpg"); //Dimensions: 360 width, 360 height
//
//Aspect Ration Calculations
int pic1Width = 800;
int pic1Height = 600;
int pic2Width = 360;
int pic2Height = 360;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
//
if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
 largerPic1Dimension = pic1Width;
 smallerPic1Dimension = pic1Height;
 widthPic1Larger = true;
} else { //Id Larger Dimension; Portrait
 largerPic1Dimension = pic1Height;
 smallerPic1Dimension = pic1Width;
 heightPic1Larger = true;
} //End pic1 larger dimension ID
//
if ( pic1Width >= pic1Height ) { 
 largerPic2Dimension = pic2Width;
 smallerPic2Dimension = pic2Height;
 widthPic2Larger = true;
} else {
 largerPic2Dimension = pic2Height;
 smallerPic2Dimension = pic2Width;
 heightpic2Larger = true;
} //End pic2 larger dimension ID
println (smallerPic1Dimension, largerPic1Dimension, smallerPic1Dimension, largerPic1Dimension); //Verifying Variable Details 
//
rectXPic1 = width*1/4;
rectYPic1 = height*0;
rectWidthPic1 = width*1/2;
rectHeightPic1 = height*1/2;
rectXPic2 = width*1/8;
rectYPic2 = height*1/2;
rectWidthPic2 = width*6/8;
rectHeightPic2 = height*1/2;
//
//Rectangle Layout & Image Printng on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
