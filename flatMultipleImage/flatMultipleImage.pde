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
pic2 = loadImage("3-36954_vector-clip-art-png-transparent-png.png"); //Dimensions: 860 width, 613 height
//
rectXPic1 = width;
rectYPic1 = height;
rectWidthPic1 = width;
rectHeightPic1 = height;
rectXPic2 = width;
rectYPic2 = height;
rectWidthPic2 = width;
rectHeightPic2 = height;
//
//Rectangle Layout & Image Printng on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
//image(pic1);
//image(pic2);
