void reset() {
  objects = new ArrayList<GameObject>();
  player = new Starfighter();
  objects.add(player);

  int i = 0;
  while (i<objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  player.show();
  player.act();
}
