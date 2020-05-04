
Particle particle;

void setup()
{
  fullScreen();
  background(255);
  particle = new Particle(width/2, height/2, 10, .5);
}


void draw()
{
  background(255);
  particle.Draw();
  particle.Update();
}
