public class FireworkParticle
{
  
  private PVector position;
  private PVector velocity;
  private PVector acceleration;
  
  FireworkParticle(float x, float y)
  {
    position = new PVector(x, y);
    velocity = new PVector(0, -random(100, 140));
    acceleration = new PVector(0, FireworksDisplay.gravitationalForceMagnitude);
  }
  
  public PVector GetPosition()
  {
    return position;
  }
  
  public float GetVelocity()
  {
    return velocity.y;
  }
  
  public void Draw()
  {
    circle(position.x, position.y, 25);
  }
  
  public void Update()
  { 
    //in the display grid, subtracting pixel distance
    //moves the particle upwards
    position.add(velocity);
    velocity.add(acceleration);
  }
  
}
