In the module, you can see the following variable declarations:
```verilog
input [6:0] x,
input [6:0] y,
```
This indicates that both x and y are both 7-bit wide values.

Inside the `if` statement, some values are written with a `7'd` prefix. This means they are truncated down to 7 bits. Values without the `7'd` prefix are interpreted as 32-bit wide by default.

You can remove all statements where the value is greater than or equal to 128 as they will never be true. The remaining statements will produce the flag.

Alternatively, you could run the module using a Verilog VGA simulator to get the output directly (can't really stop you).