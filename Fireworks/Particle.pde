public class Particle
{
  
  private int xLocation;
  private int yLocation;
  
  Particle(int x, int y)
  {
    xLocation = x;
    yLocation = y;
  }
  
  public void Draw()
  {
    circle(xLocation, yLocation, 10);
  }
  
}
