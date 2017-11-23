void setup()
{
  fullScreen();
  cursor(CROSS);
}

ArrayList<Enemy> enemies = new ArrayList<Enemy>();

void draw()
{
  background(15);
  
  if(enemies.size() != 10)
  {
    enemies.add(new Enemy(random(0,width),random(0,height),10,10,10));
  }
  
  loadEnemies();
}

void loadEnemies()
{
  for(Enemy enemies : enemies)
  {
    ellipse(enemies.xPos,enemies.yPos,enemies.size,enemies.size);
  }
}

void keyPressed()
{
  if(keyCode == LEFT)
  {
    enemies.remove(0);
  }
}