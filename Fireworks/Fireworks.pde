ArrayList<Firework> fireworks = new ArrayList<Firework>();
ArrayList<FireworkSpark> sparks = new ArrayList<FireworkSpark>();

final float gravitationalForceMagnitude = 4.7;

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
  
  //Make interface so sparks and fireworks can be in same array and update them all at once - clean up how they look and code
  
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
      currentFirework.Load();
      currentFirework.Launch();
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

//TODO: Maybe add this function to the particle object or add it to a separate class that controls the environment and physics
float GenerateVelocity()
{
  return random(100, 140);
}

void GenerateFirework()
{

    Particle fireworkParticle = new Particle(random(width), height, GenerateVelocity(), gravitationalForceMagnitude);
    
    Firework newFirework = new Firework(fireworkParticle, color(random(256), random(256), random(256)));
    fireworks.add(newFirework);  

}
