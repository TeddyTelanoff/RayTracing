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
}
