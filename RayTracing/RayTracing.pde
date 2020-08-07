Ray[] rays;
ArrayList<RayCollider> rayColliders;

PVector pos = new PVector(), rot = new PVector(0, 45, 90), fov = new PVector(180, 90);

void setup()
{
  size(500, 400);
  
  rayColliders =
    new ArrayList<RayCollider>()
    {{
      add(new Box(new PVector(200, 100, 200), new PVector(100, 100, 100), #00FF00));
    }};
  
  rays = new Ray[width * height];
  loadRays();
  
  background(57);
  loadPixels();
  drawRays();
  updatePixels();
}

void draw()
{
  surface.setTitle("Ray Tracing - Treidex | FPS: " + frameRate);
  
  
}

void loadRays()
{
  for (int y = 0; y < height; y++)
    for (int x = 0; x < width; x++)
    {
      rays[indexOf(x, y)] = new Ray(x, y, new PVector(pos.x + (x - width/2), pos.y + (y - height/2), pos.z), new PVector(rot.x + (x - fov.x/2), rot.y + (y - fov.y/2), rot.z), 1, 200);
    }
}

void drawRays()
{
  for (int y = 0; y < height; y++)
    for (int x = 0; x < width; x++)
    {
      rays[indexOf(x, y)].reDraw();
      while (rays[indexOf(x, y)].isAlive())
      {
        rays[indexOf(x, y)].update();
      }
    }
}

int indexOf(int x, int y)
{
  return x + y * width;
}
