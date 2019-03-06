class Pendulum {
  float l;
  float x, y;
  float omega;
  float c;
  
  Pendulum(float l, float c) {
    this.l = l;
    this.c = c;
    this.omega = TWO_PI * sqrt(g / this.l);
  }
  
  void update() {
    this.x = width / 2 + this.l * sin(a_max * cos(this.omega * t));
    this.y = this.l * cos(a_max * cos(this.omega * t));
  }
  
  void show() {
    //stroke(200, 100, 100, 30);
    stroke(150, 255, 140, 50);
    line(width / 2, 0, this.x, this.y);
    stroke(40, 140, 20);
    //stroke(200);
    //fill(200, 100, 100, 50);
    fill(130, 220, 40);
    ellipse(this.x, this.y, diameter, diameter);
  }
}
