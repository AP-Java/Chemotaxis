Dots [] group; 
void setup()   
{     
  noStroke();
  group = new Dots[500];
  for (int count = 0; count < group.length; count++)
  {
    group[count] = new Dots();
  }
  size(400, 400);
}   
void draw()   
{    
  background(0);
  for (int count = 0; count < group.length; count++)
  {
    group[count].walk();
    group[count].show();
  }
}  
class Dots   
{     
  int myX, myY;

  Dots()
  {
    myX = (int)(Math.random() * 400);
    myY = (int)(Math.random() * 400);
  }
  void show()
  {
    
    fill(255);
    rect(myX, myY, 10, 10);
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
  }
}    

