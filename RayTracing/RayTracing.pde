ArrayList<RayCollider> rayColliders;

Ray[] rays;

PVector pos = new PVector(0, 0, 0), rot = new PVector(180, 0, 90);

void setup()
{
  size(500, 400);
  
  rayColliders = new ArrayList();
  rayColliders.add(new Box(new PVector(0, 0, 0), new PVector(100, 100, 100), #00FF00));
  
  rays = new Ray[width * height];
  for (int y = 0; y < height; y++)
    for (int x = 0; x < width; x++)
    {
      rays[indexOf(x, y)] = new Ray(x, y, PVector.add(pos, new PVector(x, y)), rot, 1, 250);
      rays[indexOf(x, y)].run();
    }
}

int indexOf(int x, int y)
{
  return x + y * width;
}
