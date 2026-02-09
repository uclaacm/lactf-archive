import math
import random

block_shapes = [
    # T Block
    [[0, 1, 0],
     [1, 1, 1],
     [0, 0, 0]],
    # J Block
    [[1, 0, 0],
     [1, 1, 1],
     [0, 0, 0]],
    # L Block
    [[0, 0, 1],
     [1, 1, 1],
     [0, 0, 0]],
    # S Block
    [[0, 1, 1],
     [1, 1, 0],
     [0, 0, 0]],
    # Z Block
    [[1, 1, 0],
     [0, 1, 1],
     [0, 0, 0]],
    # O Block
    [[1, 1],
     [1, 1]],
    # I Block
    [[0,0,0,0], [1,1,1,1], [0,0,0,0], [0,0,0,0]]
]

common_cw_kicks = [
    [(0, 0), (0, -1), (-1, -1), (2, 0), (2, -1)],
    [(0, 0), (0, 1), (1, 1), (-2, 0), (-2, 1)],
    [(0, 0), (0, 1), (-1, 1), (2, 0), (2, 1)],
    [(0, 0), (0, -1), (1, -1), (-2, 0), (-2, -1)]
]

common_ccw_kicks = [
    [(0, 0), (0, 1), (-1, 1), (2, 0), (2, 1)],
    [(0, 0), (0, 1), (1, 1), (-2, 0), (-2, 1)],
    [(0, 0), (0, -1), (-1, -1), (2, 0), (2, -1)],
    [(0, 0), (0, -1), (1, -1), (-2, 0), (-2, -1)]
]

i_cw_kicks = [
    [(0, 0), (0, -2), (0, 1), (1, -2), (-2, 1)],
    [(0, 0), (0, -1), (0, 2), (-2, -1), (1, 2)],
    [(0, 0), (0, 2), (0, -1), (-1, 2), (2, -1)],
    [(0, 0), (0, 1), (0, -2), (2, 1), (-1, -2)]
]

i_ccw_kicks = [
    [(0, 0), (0, -1), (0, 2), (-2, -1), (1, 2)],
    [(0, 0), (0, 2), (0, -1), (-1, 2), (2, -1)],
    [(0, 0), (0, 1), (0, -2), (2, 1), (-1, -2)],
    [(0, 0), (0, -2), (0, 1), (1, -2), (-2, 1)]
]

piece_to_type = {"T": 0, "J": 1, "L": 2, "S": 3, "Z": 4, "O": 5, "I": 6}

class Board:
    """Board representation"""

    def __init__(self, height, width):
        self.height = height
        self.width = width
        self.board = self._get_new_board()

        self.current_block_pos = None
        self.piece_queue = []
        self.held_piece = None
        self.hold_lock = False

        self.current_block = None
        self.next_blocks = []
        self.lock_delay = 0
        self.rotation_state = 0

        self.game_over = False
        self.score = None
        self.lines = None
        self.level = None

    def start(self, save = None):
        """Start game"""

        self.board = self._get_new_board()

        self.current_block_pos = None
        self.lock_delay = 0
        self.rotation_state = 0

        self.current_block = None
        self.piece_queue = []
        self.held_piece = None
        self.hold_lock = False
        self.next_blocks = []
        if save:
            current, hold, nexts, queue, board = save.decode().split("|")
            self.current_block = Block(piece_to_type[current])
            if hold != " ":
                self.held_piece = Block(piece_to_type[hold])
            for piece in nexts:
                self.next_blocks.append(Block(piece_to_type[piece]))
            for piece in queue:
                self.piece_queue.append(piece_to_type[piece])
            for i in range(self.height * self.width):
                if board[i] == " ":
                    self.board[i // self.width][i % self.width] = 0
                else:
                    self.board[i // self.width][i % self.width] = piece_to_type[board[i]] + 1

        self.game_over = False
        self.score = 0
        self.lines = 0
        self.level = 1

        self._place_new_block()

    def is_game_over(self):
        """Is game over"""

        return self.game_over

    def hold(self):
        if not self.hold_lock:
            self.hold_lock = True
            if self.held_piece:
                self.next_blocks.insert(0, self.held_piece)
            self.held_piece = Block(self.current_block.block_type)
            self._place_new_block()


    def rotate_block(self):
        rotated_shape = list(map(list, zip(*self.current_block.shape[::-1])))
        if self.current_block.block_type <= 4 or self.current_block.block_type == 6:
            kick_table = common_cw_kicks
            if self.current_block.block_type == 6:
                kick_table = i_cw_kicks
            for kick in kick_table[self.rotation_state]:
                try_pos = [self.current_block_pos[0] + kick[0], self.current_block_pos[1] + kick[1]]
                if self._can_move(try_pos, rotated_shape):
                    self.current_block.shape = rotated_shape
                    self.current_block_pos = try_pos
                    self.rotation_state = (self.rotation_state + 1) % 4
                    self.lock_delay = 0
                    return
        elif self._can_move(self.current_block_pos, rotated_shape):
            self.current_block.shape = rotated_shape

    def rotate_block_r(self):
        rotated_shape = list(map(list, zip(*self.current_block.shape)))[::-1]
        if self.current_block.block_type <= 4 or self.current_block.block_type == 6:
            kick_table = common_ccw_kicks
            if self.current_block.block_type == 6:
                kick_table = i_ccw_kicks
            for kick in kick_table[self.rotation_state]:
                try_pos = [self.current_block_pos[0] + kick[0], self.current_block_pos[1] + kick[1]]
                if self._can_move(try_pos, rotated_shape):
                    self.current_block.shape = rotated_shape
                    self.current_block_pos = try_pos
                    self.rotation_state = (self.rotation_state - 1) % 4
                    self.lock_delay = 0
                    return
        elif self._can_move(self.current_block_pos, rotated_shape):
            self.current_block.shape = rotated_shape

    def move_block(self, direction):
        """Try to move block"""

        pos = self.current_block_pos
        if direction == "left":
            new_pos = [pos[0], pos[1] - 1]
        elif direction == "right":
            new_pos = [pos[0], pos[1] + 1]
        elif direction == "down":
            new_pos = [pos[0] + 1, pos[1]]
        else:
            raise ValueError("wrong directions")

        if self._can_move(new_pos, self.current_block.shape):
            self.current_block_pos = new_pos
            self.lock_delay = 0
        elif direction == "down":
            self.lock_delay += 1
            if self.lock_delay == 3:
                self._land_block()
                self._burn()
                self._place_new_block()

    def drop(self):
        """Move to very very bottom"""

        i = 1
        while self._can_move((self.current_block_pos[0] + 1, self.current_block_pos[1]), self.current_block.shape):
            i += 1
            self.move_block("down")
        self._land_block()
        self._burn()
        self._place_new_block()

    def _get_new_board(self):
        """Create new empty board"""

        return [[0 for _ in range(self.width)] for _ in range(self.height)]

    def _place_new_block(self):
        """Place new block and generate the next one"""
        self.rotation_state = 0
        self.lock_delay = 0
        if not self.next_blocks:
            self.current_block = self._get_new_block()
            for _ in range(4):
                self.next_blocks.append(self._get_new_block())
        else:
            self.current_block = self.next_blocks.pop(0)
            while len(self.next_blocks) < 4:
                self.next_blocks.append(self._get_new_block())

        size = Block.get_size(self.current_block.shape)
        col_pos = math.floor((self.width - size[1]) / 2)
        self.current_block_pos = [0, col_pos]

        if self._check_overlapping(self.current_block_pos, self.current_block.shape):
            self.game_over = True

    def _land_block(self):
        """Put block to the board and generate a new one"""
        self.score += 5
        self.hold_lock = False
        size = Block.get_size(self.current_block.shape)
        for row in range(size[0]):
            for col in range(size[1]):
                if self.current_block.shape[row][col] == 1:
                    self.board[self.current_block_pos[0] + row][self.current_block_pos[1] + col] = self.current_block.color

    def _burn(self):
        """Remove matched lines"""

        for row in range(self.height):
            if all(col != 0 for col in self.board[row]):
                for r in range(row, 0, -1):
                    self.board[r] = self.board[r - 1]
                self.board[0] = [0 for _ in range(self.width)]
                self.score += 100
                self.lines += 1
                if self.lines % 10 == 0:
                    self.level += 1

    def _check_overlapping(self, pos, shape):
        """If current block overlaps any other on the board"""

        size = Block.get_size(shape)
        for row in range(size[0]):
            for col in range(size[1]):
                if shape[row][col] == 1:
                    if pos[0] + row >= self.height or pos[1] + col < 0 or pos[1] + col >= self.width or self.board[pos[0] + row][pos[1] + col] != 0:
                        return True
        return False

    def _can_move(self, pos, shape):
        """Check if move is possible"""

        return not self._check_overlapping(pos, shape)

    def _get_new_block(self):
        """Get random block"""
        if not self.piece_queue:
            self.piece_queue = list(range(7))
            random.shuffle(self.piece_queue)
        block = Block(self.piece_queue.pop(0))

        return block
    
    def __repr__(self):
        block_type_text = ["T", "J", "L", "S", "Z", "O", "I"]
        ret = block_type_text[self.current_block.block_type] + "|"
        if self.held_piece:
            ret += block_type_text[self.held_piece.block_type]
        else:
            ret += " "
        ret += "|"
        for block in self.next_blocks:
            ret += block_type_text[block.block_type]
        ret += "|"
        for block in self.piece_queue:
            ret += block_type_text[block]
        ret += "|"
        for row in self.board:
            for tile in row:
                if tile == 0:
                    ret += " "
                else:
                    ret += block_type_text[tile - 1]
        return ret


class Block:
    """Block representation"""

    def __init__(self, block_type):
        self.shape = block_shapes[block_type]
        self.color = block_type + 1
        self.block_type = block_type

    def flip(self):
        self.shape = list(map(list, self.shape[::-1]))

    def _get_rotated(self):
        return list(map(list, zip(*self.shape[::-1])))

    def size(self):
        """Get size of the block"""

        return self.get_size(self.shape)

    @staticmethod
    def get_size(shape):
        """Get size of a shape"""

        return [len(shape), len(shape[0])]
