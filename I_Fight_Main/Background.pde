class Background{
   
  PVector BGpos;
  PVector BGsize;
  color BGcolor;
  
    Background(PVector _BGpos, PVector _BGsize, color _BGcolor){
     
      BGpos = _BGpos;
      BGsize = _BGsize;
      BGcolor = _BGcolor;
      
    }
    
    void makeBG(){
      fill(BGcolor);
      rect(BGpos.x, BGpos.y, BGsize.x, BGsize.y);
    }
  
}