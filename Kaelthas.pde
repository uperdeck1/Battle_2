class Kaelthas 
{
  PImage Kaelthas; 
  int x;
  int y;
  int speed;
  
  
  
  Kaelthas()
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
    if (key == 'a')
    {
     x-=speed;
    }
   if (key == 's')
   {
     y+=speed;
   }
   if (key == 'd')
   {
     x+=speed;
   }    
   if (key == 'w')   
   {
     y-=speed;
  }
  }
}
}