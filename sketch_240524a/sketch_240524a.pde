
//imagenes 
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;
PImage img12;
PImage img13;
PImage img14;
PImage img16;
PImage img17;
PImage img18;

//tipo de letra
PFont letra1;
PFont letra2;

//boton1
color boton1Color= color(255);
int boton1PosX = 360;
int boton1PosY = 355;
int boton1Ancho = 200;
int boton1Alto = 40;





// para usar 
void mouseClicked() {
  if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho && mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
    frameCount = pantalla;

  }
}


void mouseMoved() {
  if (mouseX > boton1PosX && mouseX < boton1PosX + boton1Ancho && mouseY > boton1PosY && mouseY < boton1PosY + boton1Alto) {
    boton1Color = color(200);
  } else {
    boton1Color = color(255);
  }


void setup(){

  size(640, 480);

  img1 = loadImage("IMG_0.WEBP");
  img2 = loadImage("IMG_1");
  img3 = loadImage("IMG_2.WEBP");
  img4 = loadImage("IMG_3.WEBP");
  img5 = loadImage("IMG_4.WEBP");
  img6 = loadImage("IMG_5.WEBP");
  img7 = loadImage("IMG_6.WEBP");
  img8 = loadImage("IMG_7.WEBP");
  img9 = loadImage("IMG_8.WEBP");
  img10 = loadImage("IMG_9.WEBP");
  img11 = loadImage("IMG_10.WEBP");
  img12 = loadImage("IMG_11.WEBP");
  img13 = loadImage("IMG_12.WEBP");
  img14 = loadImage("IMG_13.WEBP");
  img15 = loadImage("IMG_14.WEBP");
  img16 = loadImage("IMG_15.WEBP");
  img17 = loadImage("IMG_16.JPG");
  img18 = loadImage("IMG_17.JPG");
  img18 = loadImage("IMG_18.PNG");
  
  //tipo de funte
  
  letra1 = loadfont("Boo.vlw"); 
  letra2 = loadfont("Micro.vlw");
  
}
  
}




void draw() {
  println("X: ", mouseX, "Y: ", mouseY);
  background(0);


    
  }
