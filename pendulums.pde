float t;
float a_max = PI/10;
float g = 70;
float diameter = 8;
int totalFrames = 300;
int counter = 0;
ArrayList<Pendulum> group;


void setup() {
  size(400, 400);
  //colorMode(HSB, 100);
  group = new ArrayList<Pendulum>();
  for (float i = 1; i <= 20; i += 0.1) {
    group.add(new Pendulum((height/20)*i, map(i, 1, 20, 100, 0)));
  }
}

void draw() {
  background(51);
  for (Pendulum p : group) { 
    p.update();
    p.show();
  }
  //saveFrame("output/gif-" + nf(counter, 3) + ".png");
  counter++;
  if (frameCount < 500) {
    t = 0;
  }
  println(frameCount);
  t += 0.01;
}
