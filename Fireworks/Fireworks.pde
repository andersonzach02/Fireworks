ArrayList<Firework> fireworks = new ArrayList<Firework>();

final float gravitationalForceMagnitude = 4.7;

void setup()
{
  fullScreen();
  background(255);

}


void draw()
{
  background(255);
  
  if(random(1) < 0.1)
  {
    GenerateFirework();
  }
  
  for(Firework firework : fireworks)
  {
    if(firework.GetSpeed() < 0)
    {
      firework.Explode();
    }
    else
    {
      firework.Load();
      firework.Launch();
    }
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
    
    if(fireworks.size() < 100)
    {
      Firework newFirework = new Firework(fireworkParticle, color(255, 0, 0));
      fireworks.add(newFirework);  
    }
    
}
