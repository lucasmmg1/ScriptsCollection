public class Box extends gamecomponentsforprocessing.library.Object
{
  Box(Vector3 position, Vector3 localScale)
  {
    transform.position = position;
    transform.localScale = localScale;
  }
  
  public void Show()
  {
    noStroke();
    fill(255);
    
    pushMatrix();
      translate(transform.position.x, transform.position.y, transform.position.z);
      box(transform.localScale.x, transform.localScale.y, transform.localScale.z);
    popMatrix();
  }
  
  public ArrayList<Box> GenerateSlices()
  {
    ArrayList<Box> boxes = new ArrayList<Box>(); 
    
    for (int x = -1; x < 2; x++)
    {
      for (int y = -1; y < 2; y++)
      {
        for (int z = -1; z < 2; z++)
        {
          int sum = abs(x) + abs(y) + abs(z);
          if (sum <= 1)
          {
            numberOfHoles++;
            continue;
          }
          
          Vector3 newScale = new Vector3((transform.localScale.x / 3), (transform.localScale.y / 3), (transform.localScale.z / 3));
          Box box = new Box(new Vector3(transform.position.x + x * newScale.x, transform.position.y + y * newScale.y, transform.position.z + z * newScale.z), newScale);
          boxes.add(box);
        }
      }
    }
    
    return boxes;
  }
}
