import sys
from interpreter.args_interpreter import ArgumentsInterpreter

if len(sys.argv) > 1:
    print('Arguments were', str(sys.argv[1:]))    # TODO: ERRASE THIS
    
    my_interpreter = ArgumentsInterpreter(sys.argv[1:])       # list with parameters from command line, should be something like [0, 3, 5]

    if my_interpreter.is_valid:
        print('Res: {} | Ran: {}'.format(my_interpreter.get_resolution(), my_interpreter.get_range()))
        print('')    # TODO: ERRASE THIS
    else:
        print('Errors are:')    # TODO: ERRASE THIS
        print(*my_interpreter.get_err_message(), sep = '\n')    # TODO: ERRASE THIS
        print('')    # TODO: ERRASE THIS
        # print("ERROR")

else:
    print('No arguments passed.')    # TODO: ERRASE THIS
    print('')    # TODO: ERRASE THIS
    # print('ERROR')
