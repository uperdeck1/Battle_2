li_Ming m;
Kaelthas k;


boolean li_UP, li_DOWN, li_RIGHT, li_LEFT;
boolean Kael_UP, Kael_DOWN, Kael_LEFT, Kael_RIGHT;

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
   k.Move(Kael_UP, Kael_DOWN, Kael_LEFT, Kael_RIGHT);
   k.attack();
   m.display();
   m.Move(li_UP, li_DOWN, li_LEFT, li_RIGHT);
   m.attack();
   if(k.checkCollision(m.x,m.y,m.li_Ming.width,m.li_Ming.height))
   {
     m.health -= 100;
   }
   if(m.checkCollision(k.x,k.y,k.Kaelthas.width,k.Kaelthas.height))
   {
     k.health -= 100; 
   }
   
   if(k.health <=0)
   {
     LiWINS();
   }
   if(m.health <=0)
   {
     KaelWINS();
     
   }
   
   if(keyPressed) 
   {
     if(key == 'w')
     {
       li_UP = true;
     }
     
     if(key == 'a')
     {
       li_LEFT = true;
     }
     
     if(key == 's')
     {
       li_DOWN = true;
     }
     
     if(key == 'd')
     {
       li_RIGHT = true;
     }
     
      if (keyCode == LEFT)
      {
        Kael_LEFT = true;
      }
      
       if (keyCode == RIGHT)
      {
        Kael_RIGHT = true;
      }
      
       if (keyCode == UP)
      {
        Kael_UP = true;
      }
      
       if (keyCode == DOWN)
      {
        Kael_DOWN = true; 
      }
     
     
     
   }
  
    


}

void keyReleased()
{
  if(key == 'w')
  {
    li_UP = false;
  }
  
  if(key == 'a')
  {
    li_LEFT = false;
  }
  
  if(key == 's')
  {
    li_DOWN = false;
  }
  
  if(key == 'd')
  {
    li_RIGHT = false;
  }
  
  if (keyCode == LEFT)
      {
        Kael_LEFT = false;
      }
      
       if (keyCode == RIGHT)
      {
        Kael_RIGHT = false;
      }
      
       if (keyCode == UP)
      {
        Kael_UP = false;
      }
      
       if (keyCode == DOWN)
      {
        Kael_DOWN = false; 
      }
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
  
  void KaelWINS()
{ 
  textSize(150);
  text ("KAELTHAS WINS",200,300);
  fill(150);

}

void LiWINS()
{ 
  textSize(150);
  text ("Li Ming WINS",200,300);
  fill(150);
  
}