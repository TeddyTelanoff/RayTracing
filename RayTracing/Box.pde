class Box implements RayCollider
{
  PVector pos, size;
  color col;
  
  Box(PVector pos, PVector size, color col)
  {
    this.pos = pos;
    this.size = size;
    this.col = col;
  }
  
  int colorAt(PVector coord)
  {
    return col;
  }
  
  boolean isColliding(PVector checkPos)
  {
    return
    (
      (checkPos.x >= pos.x && checkPos.x <= pos.x + size.x)
        &&
      (checkPos.y >= pos.y && checkPos.y <= pos.y + size.y)
        &&
      (checkPos.z >= pos.z && checkPos.z <= pos.z + size.z)
    );
  }
}
