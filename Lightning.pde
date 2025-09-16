boolean lightning = false;

void setup() {
  size(450, 450);
  noStroke();
}

void draw() {
  background(30, 20, 40);

  fill(60);
  ellipse(width/2, 100, 250,150);
  // A cloud 

  if (lightning) {
    if (Math.random() < 0.5) background(200, 200, 255);
    //Color of the flashes when pressed 
    stroke(300, 300, 300);
    strokeWeight(2);
    // Highlight of the lights color around the "cloud" 
    int x = width/2 + (int)(Math.random()*100 - 30);
    int y = 100;
    while (y < height) {
      int ax = x + (int)(Math.random()*40) - 20;
      int my = y + (int)(Math.random()*25) + 10;
      line(x, y, ax, my);
      x = ax;
      y = my;
    }
  }
}

void mousePressed()  { lightning = true;  }
void mouseReleased() { lightning  = false; }
