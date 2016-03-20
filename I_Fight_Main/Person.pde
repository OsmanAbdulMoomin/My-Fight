class Person {

  int Psizew;
  int Psizeh;
  color Pcolor;
  int Pspeed;
  int PXpos;
  int PYpos;

  Person(int _PXpos, int _Psizew, int _Psizeh, color _Pcolor, int _Pspeed) {
    PXpos = _PXpos;
    PYpos = height - _Psizeh/2;
    Psizew = _Psizew;
    Psizeh = _Psizeh;
    Pcolor = _Pcolor;
    Pspeed = _Pspeed;
  }

  void makePerson() {
    rectMode(CENTER);
    fill(Pcolor) ;
    rect(PXpos, PYpos, Psizew, Psizeh);
  }

  void movePerson() {

    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == RIGHT) {
          PXpos += Pspeed;
        }
        if (keyCode == LEFT) {
          PXpos -= Pspeed;
        }
      }
    }
  }
}