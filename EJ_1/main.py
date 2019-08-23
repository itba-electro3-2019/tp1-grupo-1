import sys
from interpreter.args_interpreter import ArgumentsInterpreter

my_interpreter = ArgumentsInterpreter(int(sys.argv))       # list with parameters from command line, should be something like [0, 3, 5]

if my_interpreter.is_valid:
    print ('Res: {} | Ran: {}'.format(my_interpreter.get_resolution(), my_interpreter.get_range()))
