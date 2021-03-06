class Kaelthas 
{
  PImage Kaelthas; 
  PImage Pyroblast; 
  int x;
  int y;
  int speed;
  int pyroX; 
  int pyroY;
  int health; 


  Kaelthas()
  {
    speed=20;
    Kaelthas = loadImage("Kaelthas.png");
    Pyroblast = loadImage("Pyroblast.png");
    x=1300;
    y=400;
    pyroY = -100;
    health = 500;
  }

  void display()
  {

    image(Kaelthas, x, y);
    fill(255, 0, 0);
    rect(width/2, 0, width/2, 40);
    int mHealth = (int)map(health, 0, 500, 0, width/2);
    fill(0, 255, 0);
    rect(width/2, 0, mHealth, 40);
  }




  void Move(boolean up, boolean down, boolean left, boolean right)
  {
    if (left)
    {
      if (x-speed >= 0)
        x-=speed;
    }


    if (down)
    {


      if ((y+Kaelthas.height)+speed <= height)
        y+=speed;
    }
    if (right)
    {
      if (x+Kaelthas.width+speed <= width)
      x+=speed;
    }    
    if (up)   
    {
      if (y-speed >= 0)
        y-=speed;
    }
  
}

  void attack()
  {
    image(Pyroblast, pyroX, pyroY);
    pyroX -= 20;
  }

  void moveSkill()
  {
    pyroX = x;
    pyroY = y;
  }


  boolean checkCollision(int _X, int _Y, int _W, int _H)
  {
    if (_X < pyroX + Pyroblast.width &&
      _X + _W > pyroX &&
      _Y < pyroY + Pyroblast.height &&
      _H + _Y > pyroY) {
      // collision detected!
      pyroX =-1000; 
      return true;
    }

    return false;
  }
}