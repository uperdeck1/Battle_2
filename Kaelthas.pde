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
    if(keyPressed)
    {
      if(key == 'k')
      {
        image(Pyroblast, pyroX, pyroY);
      }
    }
  }
}