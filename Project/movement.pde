Ball ball1;     // Declaration of a ball object from the Ball class.
Ball ball2; 
float mag;
PVector d;
boolean connected;

void setup()
{
  size(800, 700);
  frameRate(60);
  background(0);
  ball1 = new Ball();
  ball2 = new Ball();
  
  connected = true; 
}
 
void draw()
{
  noStroke();
  ball1.draw();  
  ball2.draw();
  
  stroke(red,green,blue);
  if (connected)
  {
    
    line(ball1.position.x, ball1.position.y, ball2.position.x, ball2.position.y);
  }
  
  d = PVector. sub (ball1.position, ball2.position);
  mag = 10000 * 1./(d.mag()*d.mag());
  
  d = PVector.sub(ball1.position,ball2.position);
  mag = 0.0001 * d.mag();
  
  d.normalize().mult(mag);
  
  ball1.velocity.add(d);
  ball2.velocity.sub(d);
  
  ball1.move();
  ball2.move();

}

void keyPressed()

{
 if (key=='q') {
   noLoop();
 }
 
 if (key=='r') {
   loop();
 }
}
