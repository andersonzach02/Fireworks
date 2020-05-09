public class Firework
{
  
  private Particle firework;
  private color fireworkColor;
  private FireworkSpark[] sparks;
  
  Firework(Particle fireworkParticle, color flameColor)
  {
    firework = fireworkParticle;
    fireworkColor = flameColor;
    sparks = new FireworkSpark[100];
  }
  
  public float GetSpeed()
  {
    return -firework.GetVelocity();
  }
  
  public void Load()
  {
    firework.Draw(fireworkColor);
  }
  
  public void Launch()
  { 
    firework.Update();
  }
  
  public void Explode()
  {
    for(int i = 0; i < sparks.length; i++)
    {
      sparks[i] = new FireworkSpark(firework);
    }
    
    for(FireworkSpark spark : sparks)
    {
      spark.Draw(fireworkColor);
      spark.Update();
    }
  }
    
  
  
}
