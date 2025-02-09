costumes "costumes/tile/dirt-dr.png", "costumes/tile/dirt-dlr.png", "costumes/tile/dirt-dl.png", "costumes/tile/dirt-udr.png", "costumes/tile/dirt-udlr.png", "costumes/tile/dirt-udl.png", "costumes/tile/dirt-ur.png", "costumes/tile/dirt-ulr.png", "costumes/tile/dirt-ul.png", "costumes/tile/dirt-d.png", "costumes/tile/dirt-ud.png", "costumes/tile/dirt-u.png", "costumes/tile/dirt-r.png", "costumes/tile/dirt-lr.png", "costumes/tile/dirt-l.png", "costumes/tile/snow-dr.png", "costumes/tile/snow-dlr.png", "costumes/tile/snow-dl.png", "costumes/tile/snow-udr.png", "costumes/tile/snow-udlr.png", "costumes/tile/snow-udl.png", "costumes/tile/snow-ur.png", "costumes/tile/snow-ulr.png", "costumes/tile/snow-ul.png", "costumes/tile/snow-d.png", "costumes/tile/snow-ud.png", "costumes/tile/snow-u.png", "costumes/tile/snow-r.png", "costumes/tile/snow-lr.png", "costumes/tile/snow-l.png", "costumes/tile/bridge.png";

on "geometry" {
  hide;
  set_size 10000;

  forever {
    render;
  }
}

proc render {
  erase_all;
  tile_y = 1;
  until tile_y > map_height {
    tile_x = 1;
    until tile_x > map_width {
      if tiles[tile_y][tile_x] != "" and tiles[tile_y][tile_x] != " " {
        draw_tile;
      }
      tile_x += 1;
    }
    tile_y += 1;
  }
}

%define IS_SOLID_TILE(X) (X == "D" or X == "S")

proc draw_tile {
  this = tiles[tile_y][tile_x];
  
  if IS_SOLID_TILE(this) {
    if this == "D" {
      tile_name = "dirt-";
    } elif this == "S" {
      tile_name = "snow-";
    }
    if IS_SOLID_TILE(tiles[tile_y - 1][tile_x]) {
      tile_name &= "u";
    }
    if IS_SOLID_TILE(tiles[tile_y + 1][tile_x]) {
      tile_name &= "d";
    }
    if tile_x == 1 or IS_SOLID_TILE(tiles[tile_y][tile_x - 1]) {
      tile_name &= "l";
    }
    if tile_x == map_width or IS_SOLID_TILE(tiles[tile_y][tile_x + 1]) {
      tile_name &= "r";
    }
    switch_costume tile_name;
  } elif this == "B" {
    switch_costume "bridge";
  }

  set_size 10000;
  goto camera_x + (tile_x * 16), camera_y + (map_height - tile_y + 0.5) * 16;

  if tile_x > 122 and tile_x < 228 {
    local bridge_x = tile_x - 122;
    local bridge_end = x_pos / 8 >= 200 and tile_x >= 214;
    if bridge[bridge_x] < 30 {
      if bridge[bridge_x] == 0 and ((x_pos / 8 >= tile_x - 2) or bridge_end) {
        bridge[bridge_x] = 1;
      } elif bridge[bridge_x] > 0 {
        change_y random(-2, 1) - floor(bridge[bridge_x] / 3);
        bridge[bridge_x] += 1.5;
      }

      set_size 200;
      show;
      stamp;
      hide;
    }
  } else {
    set_size 200;
    show;
    stamp;
    hide;
  }
}
