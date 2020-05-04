public class Particle
{
  
  private int xLocation;
  private int yLocation;
  private float velocity;
  private float acceleration;
  
  Particle(int x, int y, float vel, float accel)
  {
    xLocation = x;
    yLocation = y;
    velocity = vel;
    acceleration = accel;
  }
  
  public void Draw()
  {
    circle(xLocation, yLocation, 10);
  }
  
  public void Update()
  {
    //in the display grid, subtracting pixel distance
    //moves the particle upwards
    yLocation -= velocity; 
    
    velocity -= acceleration;
  }
  
}
