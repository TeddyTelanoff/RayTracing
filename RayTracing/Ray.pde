class Ray
{
  PVector startPos, pos, rot, dir;
  float dist, step, far;
  int px, py, hitColor = 57;
  
  Ray(int px, int py, PVector startPos, PVector rot, float step, float far)
  {
    this.px = px;
    this.py = py;
    this.startPos = startPos;
    this.rot = rot;
    this.step = step;
    this.far = far;
    
    pos = startPos.copy();
    dir = new PVector(sin(radians(rot.x)) * step, cos(radians(rot.y)) * step, sin(radians(rot.z)) * step);
  }
  
  void reDraw()
  {
    pos = startPos.copy();
    dist = 0;
  }
  
  void update()
  {
    dist += step;
    pos.add(dir);
    
    if (isColliding())
    {
      pixels[indexOf(px, py)] = hitColor;
    }
  }
  
  boolean isAlive()
  {
    return !isColliding() && dist < far;
  }
  
  boolean isColliding()
  {
    for (RayCollider rayCollider : rayColliders)
    {
      if (rayCollider.isColliding(pos))
      {
        hitColor = rayCollider.colorAt(pos);
        
        return true;
      }
    }
    
    return false;
  }
}
