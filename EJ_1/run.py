import sys
from interpreter.args_interpreter import ArgumentsInterpreter

if len(sys.argv) > 1:
    
    my_interpreter = ArgumentsInterpreter(sys.argv[1:])       # list with parameters from command line, should be something like [0, 3, 5]

    if my_interpreter.is_valid:
        print('Res: {} | Ran: {}'.format(my_interpreter.get_resolution(), my_interpreter.get_range()))
    else:
        print("ERROR")

else:
    print('ERROR')
