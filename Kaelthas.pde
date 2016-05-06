class Kaelthas 
{
  PImage Kaelthas; 
  PImage Pyroblast; 
  int x;
  int y;
  int speed;
  int pyroX; 
  int pyroY;
  
  
  
  Kaelthas()
  {
    speed=20;
    Kaelthas = loadImage("Kaelthas.png");
    Pyroblast = loadImage("Pyroblast.png");
    x=1300;
    pyroY = -100;
    
    
    
    
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
  
  void attack()
  {
     image(Pyroblast, pyroX, pyroY);
     pyroX -= 5;
  }
  
  void moveSkill()
  {
    pyroX = x;
    pyroY = y;  }
}