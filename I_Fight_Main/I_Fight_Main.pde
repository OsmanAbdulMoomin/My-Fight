Person PC;
Background StartScreen, Air, Sky;
Cloud[] clouds = new Cloud[10];
int Gamestate = 0;

void setup() {

  size(500, 500);

  Air = new Background(new PVector(0, 300), new PVector(width, 200), color(0, 191, 255));
  Sky = new Background(new PVector(0, 0), new PVector(width, 300), color(0, 0, 255));
  PC = new Person(50, 30, 60, color(0), 2);


  for (int i = 0; i < clouds.length; i++) {
    clouds[i] = new Cloud(i*60, int(random(1, 5))*30, int(random(1, 2)), color(255));
  }
}


void draw() {

  if (Gamestate == 0) {
    background(0);
    textAlign(CENTER);
    textSize(50);
    text("MY FIGHT", width/2, 200);
    textSize(20);
    text("Press Enter to Begin", width/2, 350);

    if (keyPressed) {
      if (key == ENTER) {
        Gamestate = 1;
      }

      if (key == RETURN) {
        Gamestate = 1;
      }
    }
  }

  if (Gamestate == 1) {
    Air.makeBG();
    Sky.makeBG();

    PC.makePerson();
    PC.movePerson();

    for (int i = 0; i < clouds.length; i++) {
      clouds[i].makeCloud();
      clouds[i].moveCloud();
    }
  }
}