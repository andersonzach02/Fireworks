ArrayList<Firework> fireworks = new ArrayList<Firework>();
ArrayList<FireworkSpark> sparks = new ArrayList<FireworkSpark>();

final float gravitationalForceMagnitude = 4.7;

void setup()
{
  fullScreen();
  background(255);

  Particle particle = new Particle(width/2, height, GenerateVelocity(), gravitationalForceMagnitude);
  
  Firework test = new Firework(particle, color(0, 255, 0));
  
  fireworks.add(test);
}


void draw()
{
  background(255);
  
  if(random(1) < .1 && fireworks.size() < 100)
  {
    
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
      currentFirework.Load();
      currentFirework.Launch();
    }
  }
  
  for(FireworkSpark spark : sparks)
  {
    spark.Draw();
    spark.Update();
  }

}

//TODO: Maybe add this function to the particle object or add it to a separate class that controls the environment and physics
float GenerateVelocity()
{
  return random(110, 140);
}

void GenerateFirework()
{

    Particle fireworkParticle = new Particle(random(width), height, GenerateVelocity(), gravitationalForceMagnitude);
    
    Firework newFirework = new Firework(fireworkParticle, color(255, 0, 0));
    fireworks.add(newFirework);  

}
