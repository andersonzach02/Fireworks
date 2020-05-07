ArrayList<Firework> fireworks = new ArrayList<Firework>();

final float gravitationalForceMagnitude = .98;

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
    Particle fireworkParticle = new Particle(random(width), height, GenerateVelocity(), gravitationalForceMagnitude);
    Firework newFirework = new Firework(fireworkParticle, color(255, 0, 0));
    fireworks.add(newFirework);
  }
  
  for(Firework firework : fireworks)
  {
    firework.Load();
    firework.Launch();
  }

}

//TODO: Maybe add this function to the particle object or add it to a separate class that controls the environment and physics
float GenerateVelocity()
{
  return random(40, 58);
}
