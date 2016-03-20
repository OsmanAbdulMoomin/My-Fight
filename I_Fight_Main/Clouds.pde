class Cloud {

  int CXpos;
  int CYpos;
  int Csizew;
  int Csizeh;
  float Cspeed;
  color Ccolor;

  Cloud(int _CXpos, int _CYpos, float _Cspeed, color _Ccolor) {

    CXpos = _CXpos;
    CYpos = _CYpos;
    Cspeed = _Cspeed;
    Ccolor = _Ccolor;
    Csizew = 90;
    Csizeh = 30;
  }

  void makeCloud() {
    rectMode(CORNER);
    noStroke();
    fill(255);
    rect(CXpos, CYpos, Csizew, Csizeh);
  }

  void moveCloud() {
    CXpos -= Cspeed;
    if ((CXpos + Csizew)  <= 0) {
      CXpos = CXpos + width;
    }
  }
}