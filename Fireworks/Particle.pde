public class Particle
{
  
  private int xLocation;
  private int yLocation;
  private int velocity;
  
  Particle(int x, int y, int vel)
  {
    xLocation = x;
    yLocation = y;
    velocity = vel;
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
  }
  
}
