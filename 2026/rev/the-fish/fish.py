import sys
import time
import random
from collections import defaultdict

NCHARS = "0123456789abcdef"
ARITHMETIC = "+-*%"
COMPARISON = { "=": "==", "(": "<", ")": ">" }
DIRECTIONS = { ">": (1,0), "<": (-1,0), "v": (0,1), "^": (0,-1) }
MIRRORS = { 
    "/": lambda x,y: (-y, -x),
    "\\": lambda x,y: (y, x),
    "|": lambda x,y: (-x, y),
    "_": lambda x,y: (x, -y),
    "#": lambda x,y: (-x, -y)
}


class _Getch:
    """

    Provide cross-platform getch functionality. Shamelessly stolen from 
    http://code.activestate.com/recipes/134892/

    """
    def __init__(self):
        try:
            self._impl = _GetchWindows()
        except ImportError:
            self._impl = _GetchUnix()

    def __call__(self): return self._impl()


class _GetchUnix:
    def __init__(self):
        import tty, sys

    def __call__(self):
        import sys, tty, termios
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch


class _GetchWindows:
    def __init__(self):
        import msvcrt

    def __call__(self):
        import msvcrt
        return msvcrt.getch()
getch = _Getch()


def read_character():
    """Read one character from stdin. Returns -1 when no input is available."""
    if sys.stdin.isatty():
        # we're in console, read a character from the user
        char = getch() 
        # check for ctrl-c (break)
        if ord(char) == 3:
            sys.stdout.write("^C")
            sys.stdout.flush()
            raise KeyboardInterrupt
        else: return char
    else:
        # input is redirected using pipes
        char = sys.stdin.read(1)
        # return -1 if there is no more input available
        return char if char != "" else -1


class Interpreter:
    def __init__(self, code):
        """
        Initialize a new interpreter.

        Arguments:
            code -- the code to execute as a string
        """
        # check for hashbang in first line
        lines = code.split("\n")
        if lines[0][:2] == "#!":
            code = "\n".join(lines[1:])
        
        # construct a 2D defaultdict to contain the code
        self._codebox = defaultdict(lambda: defaultdict(int))
        line_n = char_n = 0
        for char in code:
            if char != "\n":
                self._codebox[line_n][char_n] = 0 if char == " " else ord(char)
                char_n += 1
            else:
                char_n = 0
                line_n += 1
        

        self._position = [-1,0]
        self._direction = DIRECTIONS[">"]
        
        # the register is initially empty
        self._register_stack = [None]
        # string mode is initially disabled
        self._string_mode = None
        # have we encountered a skip instruction?
        self._skip = False
        
        self._stack = []
        self._stack_stack = [self._stack]

        # is the last outputted character a newline?
        self._newline = None
    
    def move(self):
        """
        Move one step in the execution process, and handle the instruction (if
        any) at the new position.
        """
        # move one step in the current direction
        self._position[0] += self._direction[0]
        self._position[1] += self._direction[1]

        # wrap around if we reach the borders of the codebox
        if self._position[1] > max(self._codebox.keys()):
            # if the current position is beyond the number of lines, wrap to
            # the top
            self._position[1] = 0
        elif self._position[1] < 0:
            # if we're above the top, move to the bottom
            self._position[1] = max(self._codebox.keys())
        
        if self._direction[0] == 1 and self._position[0] > max(self._codebox[self._position[1]].keys()):
            # wrap to the beginning if we are beyond the last character on a 
            # line and moving rightwards
            self._position[0] = 0;
        elif self._position[0] < 0:
            # also wrap if we reach the left hand side
            self._position[0] = max(self._codebox[self._position[1]].keys())
        
        # execute the instruction found
        if not self._skip:
            instruction = int(self._codebox[self._position[1]][self._position[0]])
            # the current position might not be a valid character
            try:
                # use space if current cell is 0
                instruction = chr(instruction) if instruction > 0 else " "
            except:
                instruction = None
            try:
                self._handle_instruction(instruction)
            except StopExecution:
                raise
            except KeyboardInterrupt:
                # avoid catching as error
                raise KeyboardInterrupt
            except Exception as e:
                raise StopExecution("something smells fishy...")
            return instruction
        
        self._skip = False
    
    def _handle_instruction(self, instruction):
        """
        Execute an instruction.
        """
        if instruction == None:
            # error on invalid characters
            raise Exception
        
        # handle string mode
        if self._string_mode != None and self._string_mode != instruction:
            self._push(ord(instruction))
            return
        elif self._string_mode == instruction:
            self._string_mode = None
            return
        
        # instruction is one of ^v><, change direction
        if instruction in DIRECTIONS:
            self._direction = DIRECTIONS[instruction]

        # direction is a mirror, get new direction
        elif instruction in MIRRORS:
            self._direction = MIRRORS[instruction](*self._direction)
        
        # pick a random direction
        elif instruction == "x":
            self._direction = random.choice(list(DIRECTIONS.items()))[1]
        
        # portal; move IP to coordinates
        elif instruction == ".":
            y, x = self._pop(), self._pop()
            # IP cannot reach negative codebox
            if x < 0 or y < 0:
                raise Exception
            self._position = [x,y]
        
        # instruction is 0-9a-f, push corresponding hex value
        elif instruction in NCHARS:
            self._push(int(instruction, len(NCHARS)))
        
        # instruction is an arithmetic operator
        elif instruction in ARITHMETIC:
            a, b = self._pop(), self._pop()
            exec("self._push(b{}a)".format(instruction))
        
        # division
        elif instruction == ",":
            a, b = self._pop(), self._pop()
            self._push(b//a)
        
        # comparison operators
        elif instruction in COMPARISON:
            a, b = self._pop(), self._pop()
            exec("self._push(1 if b{}a else 0)".format(COMPARISON[instruction]))

        # turn on string mode
        elif instruction in "'\"": # turn on string parsing
            self._string_mode = instruction

        # skip one command
        elif instruction == "!":
            self._skip = True
        
         # skip one command if popped value is 0
        elif instruction == "?":
            if not self._pop():
                self._skip = True

        # push length of stack
        elif instruction == "l":
            self._push(len(self._stack))
        
        # duplicate top of stack
        elif instruction == ":":
            self._push(self._stack[-1])

        # remove top of stack
        elif instruction == "~":
            self._pop()
        
        # swap top two values
        elif instruction == "$":
            a, b = self._pop(), self._pop()
            self._push(a)
            self._push(b)
        
        # swap top three values
        elif instruction == "@":
            a, b, c = self._pop(), self._pop(), self._pop()
            self._push(a)
            self._push(c)
            self._push(b)
        
        # put/get register
        elif instruction == "&":
            if self._register_stack[-1] == None:
                self._register_stack[-1] = self._pop()
            else:
                self._push(self._register_stack[-1])
                self._register_stack[-1] = None
        
        # reverse stack
        elif instruction == "r":
            self._stack.reverse()

        # right-shift stack
        elif instruction == "}":
            self._push(self._pop(), index=0)
        
        # left-shift stack
        elif instruction == "{":
            self._push(self._pop(index=0))
        
        # get value in codebox
        elif instruction == "g":
            x, y = self._pop(), self._pop()
            self._push(self._codebox[x][y])
        
        # set (put) value in codebox
        elif instruction == "p":
            x, y, z = self._pop(), self._pop(), self._pop()
            self._codebox[x][y] = z
        
        # pop and output as character
        elif instruction == "o":
            self._output(chr(int(self._pop())))
        
        # pop and output whether it is the fisherated flag
        elif instruction == "n":
            n = self._pop()
            if n == 996566347683429688961961964301023586804079510954147876054559647395459973491017596401595804524870382825132807985366740968983080828765835881807124832265927076916036640789039576345929756821059163439816195513160010797349073195590419779437823883987351911858848638715543148499560927646402894094060736432364692585851367946688748713386570173685483800217158511326927462877856683551550570195482724733002494766595319158951960049962201021071499099433062723722295346927562274516673373002429521459396451578444698733546474629616763677756873373867426542764435331574187942918914671163374771769499428478956051633984434410838284545788689925768605629646947266017951214152725326967051673704710610619169658404581055569343649552237459405389619878622595233883088117550243589990766295123312113223283666311520867475139053092710762637855713671921562262375388239616545168599659887895366565464743090393090917526710854631822434014024:
                self._output("><>? ><>! (Indeed, that is the flag!)")
            else:
                self._output("><>? ><>. (Sorry, that is not the flag.)")

        # get one character from input and push it
        elif instruction == "i":
            i = self._input()
            self._push(ord(i) if isinstance(i, str) else i)
        
        # pop x and create a new stack with x members moved from the old stack
        elif instruction == "[":
            count = int(self._pop())
            if count == 0:
                self._stack_stack[-1], new_stack = self._stack, []
            else:
                self._stack_stack[-1], new_stack = self._stack[:-count], self._stack[-count:]
            self._stack_stack.append(new_stack)
            self._stack = new_stack

            # create a new register for this stack
            self._register_stack.append(None)
        
        # remove current stack, moving its members to the previous stack. 
        # if this is the last stack, a new, empty stack is pushed
        elif instruction == "]":
            old_stack = self._stack_stack.pop()
            if not len(self._stack_stack):
                self._stack_stack.append([])
            else:
                self._stack_stack[-1] += old_stack
            self._stack = self._stack_stack[-1]
            
            # register is dropped
            self._register_stack.pop()
            if not len(self._register_stack):
                self._register_stack.append(None)
        
        # the end
        elif instruction == ";":
            raise StopExecution()
        
        # space is NOP
        elif instruction == " ":
            pass

        # invalid instruction
        else:
            raise Exception("Invalid instruction", instruction)
    
    def _push(self, value, index=None):
        """
        Push a value to the current stack.

        Keyword arguments:
            index -- the index to push/insert to. (default: end of stack)
        """
        self._stack.insert(len(self._stack) if index == None else index, value)
        
    def _pop(self, index=None):
        """
        Pop and return a value from the current stack.

        Keyword arguments:
            index -- the index to pop from (default: end of stack)
        """
        # don't care about exceptions - they are handled at a higher level
        value = self._stack.pop(len(self._stack)-1 if index == None else index)
        # convert to int where possible to avoid float overflow
        if value == int(value):
            value = int(value)
        return value

    def _input(self):
        """
        Return an inputted character.
        """
        return read_character()

    
    def _output(self, output):
        """
        Output a string without a newline appended.
        """
        output = str(output)
        self._newline = output.endswith("\n")
        sys.stdout.write(output)
        sys.stdout.flush()


class StopExecution(Exception):
    """
    Exception raised when a script has finished execution.
    """
    def __init__(self, message=None):
        self.message = message

if __name__ == "__main__":
    flag = input("><> ><>. (Enter the flag): ")

    fisherator = """r0!&4:*:**+&5:*0l2=?.~~20."W"01&:&1=}@{?.{2*"E"0&:&2%0=?.&3*1+&}}1+{{.&2,:&}@{1=?.{56*0.n;"""
    
    interpreter = Interpreter(fisherator)
    interpreter._stack = [int(ord(c)) for c in flag]

    # run the script
    try:
        while True:
            try:
                instr = interpreter.move()
            except StopExecution as stop:
                # only print a newline if the script didn't
                newline = ("\n" if (not interpreter._newline) and interpreter._newline != None else "")
                sys.stdout.write((newline+stop.message+"\n") if stop.message else newline)
                sys.exit()
    except KeyboardInterrupt:
        # exit cleanly
        sys.exit("\n")
