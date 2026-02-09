import curses
import board
import base64
import time
import hashlib
import sys
from secrets import SECRET, FLAG

# Forked from https://github.com/shkolovy/tetris-terminal

BOARD_WIDTH = 10
BOARD_HEIGHT = 20

HOLD_WINDOW_WIDTH = 15
HOLD_WINDOW_HEIGHT = 8

GAME_WINDOW_WIDTH = 2 * BOARD_WIDTH + 2
GAME_WINDOW_HEIGHT = BOARD_HEIGHT + 2

HELP_WINDOW_WIDTH = 19
HELP_WINDOW_HEIGHT = 8

STATUS_WINDOW_HEIGHT = 20
STATUS_WINDOW_WIDTH = HELP_WINDOW_WIDTH

TITLE_HEIGHT = 6

LEFT_MARGIN = 3

TITLE_WIDTH = FOOTER_WIDTH = 50

winning_board = [
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [7, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 4, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 3, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 5, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 2, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 7, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 4, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 6],
    [0, 0, 0, 0, 0, 0, 0, 0, 3, 0],
    [0, 0, 0, 0, 0, 0, 0, 5, 0, 0],
    [0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
    [0, 0, 0, 0, 0, 2, 0, 0, 0, 0],
    [0, 0, 0, 0, 7, 0, 0, 0, 0, 0],
    [0, 0, 0, 4, 0, 0, 0, 0, 0, 0],
    [0, 0, 6, 0, 0, 0, 0, 0, 0, 0],
    [0, 3, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 0, 0, 0, 0, 0, 0, 0, 0, 0]
]

def make_checksum(username, save_code):
    assert len(SECRET) == 40
    return hashlib.sha256((SECRET + username + save_code).strip()).hexdigest()

def init_colors():
    """Init colors"""

    curses.init_pair(99, 8, curses.COLOR_BLACK) # 1 - grey
    curses.init_pair(98, curses.COLOR_CYAN, curses.COLOR_BLACK)
    curses.init_pair(97, curses.COLOR_RED, curses.COLOR_BLACK)
    curses.init_pair(96, curses.COLOR_BLACK, 243)
    curses.init_pair(95, curses.COLOR_BLACK, curses.COLOR_WHITE)

    curses.init_pair(1, curses.COLOR_BLACK, 129)
    curses.init_pair(2, curses.COLOR_BLACK, curses.COLOR_BLUE) # 13 - pink
    curses.init_pair(3, curses.COLOR_BLACK, 202)
    curses.init_pair(4, curses.COLOR_BLACK, curses.COLOR_GREEN)
    curses.init_pair(5, curses.COLOR_BLACK, curses.COLOR_RED)
    curses.init_pair(6, curses.COLOR_BLACK, curses.COLOR_YELLOW)
    curses.init_pair(7, curses.COLOR_BLACK, curses.COLOR_CYAN)


def init_game_window():
    """Create and return game window"""

    window = curses.newwin(GAME_WINDOW_HEIGHT, GAME_WINDOW_WIDTH, TITLE_HEIGHT, HOLD_WINDOW_WIDTH + 3)
    window.nodelay(True)
    window.keypad(1)

    return window

def init_hold_window():
    """Create and return hold window"""

    window = curses.newwin(HOLD_WINDOW_HEIGHT, HOLD_WINDOW_WIDTH, TITLE_HEIGHT, LEFT_MARGIN)
    window.nodelay(True)
    window.keypad(1)

    return window

def init_status_window():
    """Create and return status window"""

    window = curses.newwin(STATUS_WINDOW_HEIGHT, STATUS_WINDOW_WIDTH, TITLE_HEIGHT, GAME_WINDOW_WIDTH + HOLD_WINDOW_WIDTH + 3)
    return window

def init_save_window():
    """Init save window"""

    window = curses.newwin(GAME_WINDOW_HEIGHT, HOLD_WINDOW_WIDTH + GAME_WINDOW_WIDTH + HELP_WINDOW_WIDTH, TITLE_HEIGHT,
                           LEFT_MARGIN)
    window.nodelay(True)
    window.keypad(1)

    return window


def draw_game_window(window):
    """Draw game window"""

    window.border()

    # draw board
    for a in range(BOARD_HEIGHT):
        for b in range(BOARD_WIDTH):
            if game_board.board[a][b] != 0:
                window.addstr(a + 1, 2 * b + 1, "  ", curses.color_pair(game_board.board[a][b]))
            else:
                # draw net
                window.addstr(a + 1, 2 * b + 1, " .", curses.color_pair(99))

    # draw current block
    for a in range(game_board.current_block.size()[0]):
        for b in range(game_board.current_block.size()[1]):
            if game_board.current_block.shape[a][b] == 1:
                x = 2 * game_board.current_block_pos[1] + 2 * b + 1
                y = game_board.current_block_pos[0] + a + 1
                window.addstr(y, x, "  ", curses.color_pair(game_board.current_block.color))

    if game_board.is_game_over():
        go_title = " Game Over "
        ag_title = " Enter - play again "

        window.addstr(int(GAME_WINDOW_HEIGHT*.4), (GAME_WINDOW_WIDTH-len(go_title))//2, go_title, curses.color_pair(95))
        window.addstr(int(GAME_WINDOW_HEIGHT*.5), (GAME_WINDOW_WIDTH-len(ag_title))//2, ag_title, curses.color_pair(95))

    if pause:
        p_title = " Pause "
        window.addstr(int(GAME_WINDOW_HEIGHT * .4), (GAME_WINDOW_WIDTH - len(p_title)) // 2, p_title,
                      curses.color_pair(95))

    window.refresh()

def draw_save_window(window, username):
    """Draw save window"""
    window.border()

    window.addstr(1, 2, "Exported games can be resumed after being imported")
    window.addstr(2, 2, "(your score will not be saved)")
    window.addstr(4, 2, "Be sure to save the checksum, otherwise the import")
    window.addstr(5, 2, "will fail!")
    if game_board.score == 0:
        window.addstr(7, 2, "No point in exporting, place some pieces")
    else:
            
        save_code = repr(game_board)
        save_code_64 = base64.b64encode(save_code.encode())
        checksum = make_checksum(username, save_code.encode())
        window.addstr(7, 2, "Save code:")
        n = 8
        for line in [save_code_64[i:i+50] for i in range(0, len(save_code_64), 50)]:
            window.addstr(n, 2, line)
            n += 1
        window.addstr(n + 1, 2, "Checksum:")
        n += 2
        for line in [checksum[i:i+50] for i in range(0, len(checksum), 50)]:
            window.addstr(n, 2, line)
            n += 1
    window.refresh()


def draw_status_window(window, username):
    """Draw status window"""

    if game_board.is_game_over():
        return

    # hack: avoid clearing (blinking)
    for row in range(1, STATUS_WINDOW_HEIGHT - 1):
        window.addstr(row, 2, "".rjust(STATUS_WINDOW_WIDTH - 3, " "))

    window.border()

    window.addstr(1, 2, f"Score: {game_board.score}")
    window.addstr(2, 2, f"Lines: {game_board.lines}")
    window.addstr(3, 2, f"Level: {game_board.level}")
    window.addstr(4, 2, f"Hello, {username.decode('ascii', errors='ignore')[:8]}")

    start_col = int(STATUS_WINDOW_WIDTH / 2 - 4)
    for i, next_block in enumerate(game_board.next_blocks):
        for row in range(next_block.size()[0]):
            for col in range(next_block.size()[1]):
                if next_block.shape[row][col] == 1:
                    window.addstr(6 + 3 * i + row, start_col + 2 * col, "  ", curses.color_pair(next_block.color))

    window.refresh()
    pass

def draw_hold_window(window):
    """Draw status window"""

    if game_board.is_game_over():
        return

    # hack: avoid clearing (blinking)
    for row in range(1, HOLD_WINDOW_HEIGHT - 1):
        window.addstr(row, 2, "".rjust(HOLD_WINDOW_WIDTH - 3, " "))

    window.border()
    window.addstr(1, 2, "Hold:")
    start_col = int(HOLD_WINDOW_WIDTH / 2 - 4)
    if game_board.held_piece:
        for row in range(game_board.held_piece.size()[0]):
            for col in range(game_board.held_piece.size()[1]):
                if game_board.held_piece.shape[row][col] == 1:
                    window.addstr(4 + row, start_col + 2 * col, "  ", curses.color_pair(game_board.held_piece.color))

    window.refresh()
    pass


def draw_help_window():
    """Draw help window"""

    window = curses.newwin(HELP_WINDOW_HEIGHT, HELP_WINDOW_WIDTH, TITLE_HEIGHT + STATUS_WINDOW_HEIGHT,
                           GAME_WINDOW_WIDTH + HOLD_WINDOW_WIDTH + 3)

    window.border()

    window.addstr(1, 2, "Move    - ← ↓ →")
    window.addstr(2, 2, "Drop    - space")
    window.addstr(3, 2, "Rotate  - z x ↑")
    window.addstr(4, 2, "Hold    - c")
    window.addstr(5, 2, "Pause   - p")
    window.addstr(6, 2, "Export  - e")

    window.refresh()


def draw_title():
    """Draw title"""

    window = curses.newwin(TITLE_HEIGHT, TITLE_WIDTH, 1, LEFT_MARGIN)
    window.addstr(0, 4, "### ##### ############# ##### #####", curses.color_pair(98))
    window.addstr(1, 4, "######## ### ############ #########", curses.color_pair(98))
    window.addstr(2, 4, "##### ###### ### ###  ### #### ####", curses.color_pair(98))
    window.addstr(3, 4, "## ### ### ###### ######### #######", curses.color_pair(98))
    window.addstr(4, 4, "##### ##### ######## # ####### ####", curses.color_pair(98))

    window.addstr(2, 0, " *", curses.color_pair(97))
    window.addstr(2, 41, " *", curses.color_pair(97))

    window.refresh()


def draw_footer():
    title = "Made with"
    window = curses.newwin(1, FOOTER_WIDTH, TITLE_HEIGHT + GAME_WINDOW_HEIGHT + 1, LEFT_MARGIN)
    col_pos = int((GAME_WINDOW_WIDTH + STATUS_WINDOW_WIDTH - len(title) + 1) / 2)
    window.addstr(0, col_pos, title, curses.color_pair(98))
    window.addstr(0, col_pos + len(title) + 1, "❤", curses.color_pair(97))

    window.refresh()

pause = False

game_board = board.Board(BOARD_HEIGHT, BOARD_WIDTH)
game_board.start()

old_score = game_board.score

if __name__ == "__main__":
    try:
        print("Please enter a username: ")
        username = sys.stdin.buffer.readline()[:-1]
        while len(username) > 32:
            print("Username too long. Please try again")
            username = sys.stdin.buffer.readline()[:-1]
        print("Import save code (leave blank for new game): ")
        save = sys.stdin.buffer.readline()[:-1]
        if save:
            print("Checksum (hex): ")
            user_checksum = sys.stdin.buffer.readline()[:-1]
            if user_checksum != make_checksum(username, base64.b64decode(save)).encode():
                print("User checksum does not match save code.")
                print("Please also provide the correct checksum to import save states.")
                sys.exit()
            game_board.start(save=base64.b64decode(save))
                
        scr = curses.initscr()
        curses.beep()
        curses.noecho()
        curses.cbreak()
        curses.start_color()
        curses.curs_set(0)

        init_colors()

        draw_title()
        draw_help_window()

        game_window = init_game_window()
        status_window = init_status_window()
        hold_window = init_hold_window()
        save_window = init_save_window()

        draw_game_window(game_window)
        draw_status_window(status_window, username)
        draw_hold_window(hold_window)

        start = time.time()

        quit_game = False
        while not quit_game:
            key_event = game_window.getch()
            if (game_board.board == winning_board):
                curses.endwin()
                print("Congratulations! You won!")
                print(FLAG)
                sys.exit()

            # hack: redraw it on resize
            if key_event == curses.KEY_RESIZE:
                draw_help_window()
                draw_game_window(game_window)

            if key_event == ord("q"):
                quit_game = True

            if not game_board.is_game_over():
                if not pause:
                    if time.time() - start >= 1 / game_board.level:
                        game_board.move_block("down")
                        start = time.time()

                    if key_event == curses.KEY_UP or key_event == ord("x"):
                        game_board.rotate_block()
                    elif key_event == ord("z"):
                        game_board.rotate_block_r()
                    elif key_event == curses.KEY_DOWN:
                        game_board.move_block("down")
                    elif key_event == curses.KEY_LEFT:
                        game_board.move_block("left")
                    elif key_event == curses.KEY_RIGHT:
                        game_board.move_block("right")
                    elif key_event == ord("c"):
                        game_board.hold()
                        draw_hold_window(hold_window)
                    elif key_event == ord(" "):
                        game_board.drop()
                if key_event == ord("e"):
                    pause = not pause
                    game_window.nodelay(not pause)
                    if pause:
                        draw_save_window(save_window, username)
                    else:
                        scr.touchwin()
                        scr.refresh()
                        draw_title()
                        draw_help_window()
                        draw_hold_window(hold_window)
                        save_window = init_save_window()
            else:
                curses.endwin()
                print("Game over")
                sys.exit()

            if not pause:
                draw_status_window(status_window, username)
                draw_game_window(game_window)

            if old_score != game_board.score:
                draw_status_window(status_window, username)
                old_score = game_board.score
    finally:
        curses.endwin()
