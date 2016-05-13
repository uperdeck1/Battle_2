class li_Ming
{
  PImage li_Ming;
  PImage ArcaneOrb;
  int x;
  int y;
  int speed;
  int orbX;
  int orbY;
  int health; 



  li_Ming()
  {
    speed=20;
    li_Ming = loadImage("Li ming.png");
    ArcaneOrb = loadImage("Arcane Orb.png");
    orbY = -100;
    health = 500;
  }


  void display()
  {
    image(li_Ming, x, y);

    fill(255, 0, 0);
    rect(0, 0, width/2, 40);
    int mHealth = (int)map(health, 0, 500, 0, width/2);
    fill(0, 255, 0);
    rect(width/2, 0, -mHealth, 40);
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


      if ((y+li_Ming.height)+speed <= height)
        y+=speed;
    }
    if (right)
    {
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

  orbX += 20;
  image(ArcaneOrb, orbX, orbY);
}
void moveSkill()
{
  orbX = x;
  orbY = y;
}

boolean checkCollision(int _X, int _Y, int _W, int _H)
{
  if (_X < orbX + ArcaneOrb.width &&
    _X + _W > orbX &&
    _Y < orbY + ArcaneOrb.height &&
    _H + _Y > orbY) {
    // collision detected!
    orbY =-1000; 
    return true;
  }

  return false;
}
}