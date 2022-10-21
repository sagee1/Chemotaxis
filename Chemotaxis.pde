Dots [] circle;
int hit = 0;
boolean good = true;
void setup(){
  size(500,500);
  circle = new Dots[15];
  for(int i = 0; i < circle.length; i++){
    circle[i] = new Dots();
  }
}

void draw(){
  background(0);
  fill(255,255,255);
  rect(0,410,500,5);
  for(int i = 0; i < circle.length; i++){
    circle[i].walk();
    circle[i].show();
    circle[i].die();
  }
}

class Dots{
  int myX, myY;
  Dots(){
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*10);
  }
 
  void walk(){
    myY = myY + (int)(Math.random()*6);
  }
 
  void show(){
    if(myY < 400){
      fill((int)(Math.random()*225), (int)(Math.random()*225), (int)(Math.random()*225));
      ellipse(myX, myY, 50, 50);
    }
  }
  
  void die(){
    if(get(mouseX,mouseY) != color(0)){
       myY = 0;
     }
  }
}
