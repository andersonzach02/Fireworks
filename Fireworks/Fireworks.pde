Particle particle;

final float gravitationalForce = .98;

void setup()
{
  fullScreen();
  background(255);
  particle = new Particle(width/2, height/2, GenerateVelocity(), gravitationalForce);
}


void draw()
{
  background(255);
  particle.Draw();
  particle.Update();
}

float GenerateVelocity()
{
  return random(3.6, 14.8);
}
