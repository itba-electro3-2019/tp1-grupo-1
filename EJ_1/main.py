import sys
from interpreter.args_interpreter import ArgumentsInterpreter

my_interpreter = ArgumentsInterpreter(list(map(int, sys.argv[1:])))       # list with parameters from command line, should be something like [0, 3, 5]

if my_interpreter.is_valid:
    print('Res: {} | Ran: {}'.format(my_interpreter.get_resolution(), my_interpreter.get_range()))
else:
    print(*my_interpreter.get_err_message(), sep = '\n')
