class FireworkSpark
{
  
  private PVector position;
  private PVector velocity;
  private PVector acceleration;
  
  public FireworkSpark(Particle baseParticle)
  {
    position = new PVector(baseParticle.GetPosition().x, baseParticle.GetPosition().y);
    velocity = new PVector(random(-20, 20), random(-40, 40));
    acceleration = new PVector(0, baseParticle.GetAcceleration());
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
