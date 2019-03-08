class Grid{
  
  Grid(){ }
  
  void drawGrid(){
    int i;
    for(i=0;i<50;i++){
      line(0,i*b,800,i*b);
      line(i*b,0,i*b,800);
      fill(50);
      text(i-1,i*b-1,785);
      text(19-i,15,i*b+2);
    }
    strokeWeight(4);
    line(40,0,40,800);
    line(0,760,800,760);
    def();
  }
}
