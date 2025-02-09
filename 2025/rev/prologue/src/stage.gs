costumes "costumes/stage.svg";

list tiles = file ```tiles.txt```;
list bridge;

onflag {
  map_width = 239;
  map_height = 25;
  x_pos = 0;
  y_pos = 0;
  camera_x = -248;
  camera_y = -180;
  physics = true;
  delete bridge;
  repeat 105 {
    add 0 to bridge;
  }
  cutscene = 0;
  broadcast "geometry";
  broadcast_and_wait "physics";
}
