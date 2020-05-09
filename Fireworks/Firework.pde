public class Firework
{
  
  private Particle firework;
  private color fireworkColor;
  private Particle[] sparks;
  
  Firework(Particle fireworkParticle, color flameColor)
  {
    firework = fireworkParticle;
    fireworkColor = flameColor;
    sparks = new Particle[100];
  }
  
  public void Load()
  {
    firework.Draw(fireworkColor);
  }
  
  public void Launch()
  { 
    firework.Update();
  }
  

    
  
  
}
