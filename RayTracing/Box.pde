class Box implements RayCollider
{
  PVector pos, size;
  int col;
  
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
      (checkPos.y >= pos.x && checkPos.y <= pos.y + size.y)
        &&
      (checkPos.z >= pos.z && checkPos.z <= pos.z + size.z)
    );
  }
}
