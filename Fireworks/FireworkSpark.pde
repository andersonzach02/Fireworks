class FireworkSpark extends Particle
{
  
  public FireworkSpark(Particle baseParticle)
  {
    super(baseParticle.GetPosition().x, baseParticle.GetPosition().y, random(.6), baseParticle.GetAcceleration());
  }
  
  
  
}
