li_Ming m;
Kaelthas k;

void setup()
{
  fullScreen();
  k=new Kaelthas();
  m=new li_Ming();
 
}



void draw()
{  
  
   background(0);
   k.display();
   k.Move();
   k.attack();
   m.display();
   m.Move();
   m.attack();
   
  
    


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