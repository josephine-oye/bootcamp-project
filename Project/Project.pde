float red; 
float green; 
float blue; 


class Ball

{ 
  PVector position; 
  PVector velocity;
  float radius;
  
  
  Ball()
  { 
    position = new PVector(width/2, height/2);
    velocity = new PVector(random(-3,3),random(-3,3));
    radius = 10;
    
  }
  
void draw()

{
  red = random(3,190);
  green = random(100,230);
  blue = random(170,255);
  noStroke();
  fill(red,green,blue, 100);
  circle(position.x, position.y, radius * 2);
}
void move()
{ 
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;
   if (position.x-radius < 0 && velocity.x< 0)
   {
     velocity.x = -1*velocity.x;
   }
   
  else if (position.x+radius > width && velocity.x > 0)
    {
      // Escaping to the right, start moving left.
      velocity.x = -1*velocity.x;
    }
 
    if (position.y-radius < 0 && velocity.y < 0)
    {
      // Escaping upwards, start moving down.
      velocity.y = -1*velocity.y;
    }
    else if (position.y+radius > height && velocity.y > 0)
    {
      // Escaping downwards, start moving up.
      velocity.y = -1*velocity.y;
    }
  }
}



   
   

  
