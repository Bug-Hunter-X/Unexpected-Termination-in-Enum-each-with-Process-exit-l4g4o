# Elixir Enum.each and Process.exit

This repository illustrates a potential problem when combining `Enum.each` and `Process.exit` in Elixir. The example shows how abruptly terminating an `Enum.each` loop can lead to unexpected results and why using a different approach (like a conditional return in a `for` loop) may be preferred for cleaner and more predictable program behavior.

## Bug Description
The provided code uses `Enum.each` to iterate over a list.  When the number 3 is encountered, `Process.exit` is called to terminate the process. While seemingly straightforward, this method can be problematic.  The `Enum.each` function itself doesn't handle exceptions or process termination gracefully.  If the process exits during the enumeration, it won't cleanly exit the enumeration. 