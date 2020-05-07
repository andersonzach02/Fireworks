public class Particle
{
  
  private PVector position;
  private PVector velocity;
  private PVector acceleration;
  
  Particle(float x, float y, float speed, float accel)
  {
    position = new PVector(x, y);
    velocity = new PVector(0, -speed);
    acceleration = new PVector(0, accel);
  }
  
  public void Draw(color particleColor)
  {
    fill(particleColor);
    circle(position.x, position.y, 10);
  }
  
  public void Update()
  {
    //in the display grid, subtracting pixel distance
    //moves the particle upwards
    position.add(velocity);
    velocity.add(acceleration);
  }
  
}
