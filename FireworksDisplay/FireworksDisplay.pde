ArrayList<Firework> fireworks = new ArrayList<Firework>();
ArrayList<FireworkSpark> sparks = new ArrayList<FireworkSpark>();

final static float gravitationalForceMagnitude = 4.7;

void setup()
{
  fullScreen();
  background(0);
}


void draw()
{
  background(0);
  
  if(random(1) < .05 && fireworks.size() < 100)
  {
    GenerateFirework();
  }
  
  for(int i = 0; i < fireworks.size(); i++)
  {
    Firework currentFirework = fireworks.get(i);
    
    if(currentFirework.GetSpeed() < 0)
    {
      sparks.addAll(currentFirework.Explode());
      fireworks.remove(currentFirework);
    }
    else
    {
      currentFirework.Draw();
      currentFirework.Update();
    }
  }
  
  for(int i = 0; i < sparks.size(); i++)
  {
    FireworkSpark spark = sparks.get(i);
    
    if(spark.GetPosition().y > height || spark.GetPosition().x > width || spark.GetPosition().x < 0)
    {
      sparks.remove(spark);
    }
    
    spark.Draw();
    spark.Update();
  }

}

void GenerateFirework()
{
    FireworkParticle fireworkParticle = new FireworkParticle(random(width), height);    
    Firework newFirework = new Firework(fireworkParticle, color(random(256), random(256), random(256)));
    fireworks.add(newFirework);  
}
