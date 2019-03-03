int b=40; //size of 1 unit block

int[] pts = {3,4, //point 1
             8,5, //point 2
             4,9};//point 3
int[] cent = {1,3}; //Center
int sf = 2; // Scale Factor

int[] ops = {0,0,0,0,0,0}; //Outputs


void setup(){
    size(800,800);
    background(240);
    dilation();
}


void draw(){
  noLoop();
  grid();
  firsttri();
  center();
  sectri();
}


int xconv(int x){return (x+1)*b;}
int yconv(int y){return (19-y)*b;}


void firsttri(){
  strokeWeight(2);
  noFill();
  triangle(xconv(pts[0]),yconv(pts[1]),xconv(pts[2]),yconv(pts[3]),xconv(pts[4]),yconv(pts[5]));
  def();
}

void sectri(){
  strokeWeight(2);
  noFill();
  triangle(xconv(ops[0]),yconv(ops[1]),xconv(ops[2]),yconv(ops[3]),xconv(ops[4]),yconv(ops[5]));
  def();
}

void grid(){
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

void center(){
  strokeWeight(7);
  point(xconv(cent[0]),yconv(cent[1]));
  def();
}

void def(){
 strokeWeight(0);
 fill(0);
}

void dilation(){
  int i;
  for(i=0;i<6;i++){
     ops[i]=(pts[i]-cent[(i+2)%2])*sf+cent[(i+2)%2];
  }
}
