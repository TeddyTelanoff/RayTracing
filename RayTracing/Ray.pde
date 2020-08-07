class Ray
{
  PVector startPos, pos, rot, dir;
  float step, dist, far;
  color hitCol;
  int px, py;
  
  Ray(int px, int py, PVector startPos, PVector rot, float step, float far)
  {
    this.px = px;
    this.py = py;
    this.startPos = startPos;
    this.rot = rot;
    this.step = step;
    this.far = far;
  }
  
  void reDraw()
  {
    pos = startPos.copy();
    dist = 0;
    
    dir =
      new PVector()
      {{
        x = sin(radians(rot.x)) * step;
        y = cos(radians(rot.y)) * step;
        z = sin(radians(rot.z)) * step;
      }};
  }
  
  void run()
  {
    reDraw();
    while (alive())
    {
      update();
    }
  }
  
  void update()
  {
    dist += step;
    pos.add(dir);
    
    if (isColliding())
    {
      loadPixels();
      pixels[indexOf(px, py)] = hitCol;
      updatePixels();
      
      println(dist, pos, dir);
    }
  }
  
  boolean alive()
  {
    return !isColliding() && dist < far;
  }
  
  boolean isColliding()
  {
    for (RayCollider rayCollider : rayColliders)
      if (rayCollider.isColliding(pos))
      {
        hitCol = rayCollider.colorAt(pos);
        
        return true;
      }
    
    return false;
  }
}
