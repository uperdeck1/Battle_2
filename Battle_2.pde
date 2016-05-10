li_Ming m;
Kaelthas k;

PImage HOTS_MAP; 

void setup()
{
  fullScreen();
  k=new Kaelthas();
  m=new li_Ming();
  HOTS_MAP = loadImage("HOTS MAP.png");
  HOTS_MAP.resize(width,height);
  background(HOTS_MAP);
}



void draw()
{  
  
   background(HOTS_MAP);
   k.display();
   k.Move();
   k.attack();
   m.display();
   m.Move();
   m.attack();
   //HOTS_MAP = loadImage("HOTS MAP.png");
  
    


}

void keyTyped()
{
  if (keyPressed)
  {
    if (key == 'k')
    {
      k.moveSkill();
    
    }
    
    if (key == 'x')
    {
      m.moveSkill();
    }
  }
  
  
}