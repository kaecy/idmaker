
int RED = color(255, 0, 0);
int GREEN = color(0, 255, 0);
int YELLOW = color(255, 255, 0);

void setup() {
  size(300, 300);
  noLoop();
}

// returns a string with a unique name
String makeName() {
  return String.valueOf(System.currentTimeMillis()) + ".png";
}

// returns a random colour, red, green or yellow
color randomColour() {
  int choice = (int)random(3);
  int colour = 0;
  
  switch(choice)
  {
    case 0:
      colour = RED;
      break;
    case 1:
      colour = GREEN;
      break;
    case 2:
      colour = YELLOW;
  }
  
  return colour;
}

void draw() {
  noStroke(); 
  int incre = width / 3;
  
  for (int y = 0; y < height; y += incre)
  {
    for (int x = 0; x < width; x += incre)
    {
      fill(randomColour());
      rect(x, y, incre, incre);
    }
  }
  
  save(makeName());
}