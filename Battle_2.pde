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
  

   k.display();
   k.Move();
   k.attack();
   m.display();
   m.Move();
   m.attack();
   
  
    


}