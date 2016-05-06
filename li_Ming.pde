class li_Ming
{
  PImage li_Ming;
  PImage ArcaneOrb;
  int x;
  int y;
  int speed;
  int orbX;
  int orbY;
  
  
  
  li_Ming()
  {
    speed=20;
    li_Ming = loadImage("Li ming.png");
    ArcaneOrb = loadImage("Arcane Orb.png");
    orbY = -100;
    
  }
  
  void display()
  {
    image(li_Ming,x,y);
    
    
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
  
  void attack()
  {
   
    orbX += 5;
    image(ArcaneOrb, orbX, orbY);
   
  }
  void moveSkill()
  {
    orbX = x;
    orbY = y;
    
  }
}