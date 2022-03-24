//Global Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;

float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0; 
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
color blue=#98B9AB;
//
void setup()
{
  size(900, 680); //fullScreen(); displayWidth, displayHeight
  //Landsacpe Presentation, not square or protrait
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
//
  //Choosing larger image dimension
  if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
    largerPic1Dimension = pic1Width;
    smallerPic1Dimension = pic1Height;
    widthPic1Larger = true;
  } else { //ID Larger Dimension: Portrait
    largerPic1Dimension = pic1Height;
    smallerPic1Dimension = pic1Width;
    heightPic1Larger = true;
  } //End pic1 larger dimension ID
  //
  if ( pic2Width >= pic2Height ) { //ID Larger Dimension: Landscape and Square
    largerPic2Dimension = pic2Width;
    smallerPic2Dimension = pic2Height;
    widthPic2Larger = true;
  } else { //ID Larger Dimension: Portrait
    largerPic2Dimension = pic2Height;
    smallerPic2Dimension = pic2Width;
    heightPic2Larger = true;
  } //End pic2 larger dimension ID
  println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details (ID Larger Dimension)
  //
  //Calculating Aspect Ratios
  //Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
  if ( widthPic1Larger == true ) imageWidthRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
  if ( widthPic1Larger == true ) imageHeightRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
  if ( heightPic1Larger == true ) imageWidthRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
  if ( heightPic1Larger == true ) imageHeightRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
  if ( widthPic2Larger == true ) imageWidthRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
  if ( widthPic2Larger == true ) imageHeightRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
  if ( heightPic2Larger == true ) imageWidthRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
  if ( heightPic2Larger == true ) imageHeightRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
  println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); //Verifying Variable Details (Ratios)
  //
  //Use ratios to change the image width and height properties of Rectangle
  //**See below to Specific Image Properties of Image and Rectangle Variables
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
  // Final Aspect Ratio Calculations
  pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
  pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
  pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
  pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
  println (pic1Width, pic1Height, pic2Width, pic2Height);
  println (pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
}//End setup
//
void draw()
{ //Note: DRAW Loop repeats 60 times / second, static images should be in SETUP, "system resourses"
  //Rectangle Layout & Image Printing on Canvas
 fill(blue);
 //rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
 rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation 
 // Image using Rect() Variables
 //image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
 //image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
 // Change the Rect() Variables to Aspect Ratio
 image(pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted);
 println ("Image one looks good, put some text underneath to fill in the space."); //Great Design Change for Aspect Ratio
 //image(pic2, rectXPic2, rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
 //Center image in rect(), pic2, by changing the yRect() value
 image(pic2, rectXPic2, rectYPic2+(rectYPic2*1/5), pic2WidthAdjusted, pic2HeightAdjusted);
}//End draw
//
void keyPressed()
{
}//End keypressed
//
void mousePressed()
{
}//End mousePressed

/*
 
 //
 
 
 
 
 //
 
 //
 //
 
 */
