costumes "costumes/cybrick.png";

%include std/math

on "geometry" {
  show;
  forever {
    render;
  }
}

proc render {
  set_size 10000;
  if x_pos / 8 > 55 and x_pos / 8 < 113 {
    goto camera_x + (74 * 16), camera_y + (map_height - 13) * 16;
    if x_pos / 8 > 69 and x_pos / 8 < 72 {
      say "Climb\nZ + ↑";
    } else {
      say "";
    }
  } elif x_pos / 8 > 113 {
    if x_pos / 8 < 122.5 {
      goto camera_x + (110 * 16), camera_y + (map_height - 5) * 16;
      say "good luc";
    } elif cutscene >= 27 {
      goto camera_x + (229 * 16), round(camera_y + (map_height - (POW((MIN(cutscene, 60) - 27) / 33, 2)) * 11) * 16);
      if cutscene == 70 {
        say "Dash\nX + ↗";
      } else {
        say "";
      }
    } else {
      say "";
    }
  } else {
    goto -300, 0;
    say "";
  }
  set_size 200;
}

onclone {
    hide;
    wait_until (physics == true);
    show;
    set_size 200;
    goto_front;
    say "Cheat Mode unlocked!";
    forever {
      render_cheats;
    }
}

proc render_cheats {
  set_size 10000;
  change_color_effect 0.5;
  goto camera_x + (229 * 16), camera_y + (map_height - 11) * 16;
  set_size 200;
}
