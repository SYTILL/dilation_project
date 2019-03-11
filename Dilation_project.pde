int b=40; //size of 1 unit block

int[] pts = {3,6, //point 1
             3,3, //point 2
             6,3};//point 3
int[] cent = {1,1}; //Center
int sf = 3; // Scale Factor

int[] ops = {0,0,0,0,0,0}; //Outputs

Grid grid = new Grid();

void setup(){
    size(800,800);
    background(240);
    dilation();
}

void draw(){
  noLoop();
  grid.drawGrid();
  firsttri();
  center();
  sectri();
}

int xconv(int x){return (x+1)*b;}
int yconv(int y){return (19-y)*b;}

void firsttri(){ //input triangle
  strokeWeight(2);
  noFill();
  triangle(xconv(pts[0]),yconv(pts[1]),xconv(pts[2]),yconv(pts[3]),xconv(pts[4]),yconv(pts[5]));
  def();
}

void sectri(){  //output triangle
  strokeWeight(2);
  noFill();
  triangle(xconv(ops[0]),yconv(ops[1]),xconv(ops[2]),yconv(ops[3]),xconv(ops[4]),yconv(ops[5]));
  def();
}

void center(){
  strokeWeight(7);
  point(xconv(cent[0]),yconv(cent[1]));
  def();
}

void def(){ //set to 0
 strokeWeight(0);
 fill(0);
}

void dilation(){ //get output
  int i;
  for(i=0;i<6;i++){
     ops[i]=(pts[i]-cent[(i+2)%2])*sf+cent[(i+2)%2];
  }
}
