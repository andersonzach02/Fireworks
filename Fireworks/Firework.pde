public class Firework
{
  
  private Particle firework;
  private color fireworkColor;
  
  Firework(Particle fireworkParticle, color flameColor)
  {
    firework = fireworkParticle;
    fireworkColor = flameColor;
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
