PImage img;



void setup() {
  size(800, 420);
  background(0); 
  noLoop(); // Detener el bucle
  img =loadImage("arop.png");
}

void draw() {
  float startX = 400; // Posición inicial en x 
  float startY = 20;  // Posición inicial en y 
  int rows = 9;       
  int cols = 9;       
  float cellSize = 20; 
image(img, 1, 1, 400, 450);
 // Dibujar la grilla
  for (int i = 0; i < rows; i++) {
    float cellHeight = (i % 2 == 0) ? 3 : 1.5;

    for (int j = 0; j < cols; j++) {
      float cellWidth = (j % 2 == 0) ? 3 : 1.5;

      if (j + i == 8) {
        fill(245, 242, 242); // Gris para la condición especial
      } else {
        fill((i + j) % 2 == 0 ? color(255, 182, 193) : color(173, 216, 230));
      }

      rect(startX, startY, cellWidth * cellSize, cellHeight * cellSize);

      String coords = "(" + j + ", " + i + ")";
      textAlign(CENTER, CENTER);
      fill(0);
      text(coords, startX + cellWidth * cellSize / 2, startY + cellHeight * cellSize / 2);

      if (j % 2 != 0 && i % 2 != 0) {
        fill(255, 255, 0); // Amarillo para elipse
        float ellipseSize = cellSize * 3;
        ellipse(startX + cellWidth * cellSize / 2, startY + cellHeight * cellSize / 2, ellipseSize, ellipseSize);
      }

      startX += cellWidth * cellSize;
    }

    startX = 400;
    startY += cellHeight * cellSize;
  }

  // Dibujar ejes
  stroke(0);
  strokeWeight(2);

  // Eje x
  line(0, startY, width, startY);

  // Etiquetas eje x
  textAlign(CENTER);
  for (int i = 0; i < cols; i++) {
    float labelX = 400 + i * cellSize * 3;
    String label = str(i);
    fill(0);
    text(label, labelX, startY + 15);
  }

  // Eje y
  line(400, 0, 400, height);

  // Etiquetas eje y
  textAlign(RIGHT);
  for (int i = 0; i < rows; i++) {
    float labelY = 20 + i * cellSize * 2.25;
    String label = str(i);
    fill(0);
    text(label, 390, labelY + 5);
  }
}
