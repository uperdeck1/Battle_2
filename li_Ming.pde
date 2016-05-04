class li Ming
{
  PImage li Ming; 
  int x;
  int y;
  int speed;
  
  
  
  li Ming()
  {
    speed=20;
    Kaelthas = loadImage("Kaelthas.png");
    
    
    
  }
  
  void display()
  {
    image(Kaelthas,x,y);
    
  }
  
  void Move()
  {
    if (keyPressed)
  {
    if (keyCode == LEFT)
    {
     x-=speed;
    }
   if (keyCode == DOWN)
   {
     y+=speed;
   }
   if (keyCode == RIGHT)
   {
     x+=speed;
   }    
   if (keyCode == UP)   
   {
     y-=speed;
  }
  }
}
}