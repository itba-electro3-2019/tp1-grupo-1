class ArgumentsInterpreter():
    '''
    Serves as an indicator of a fixed point binary system.
    Receives a list of arguments and validates them according to the following format:
        * [0, 3, 5]
        * Must be 3.
        * Must be integers.
        * argument_list[0] must be 0 or 1.
    To check validity use my_arg_int.is_valid.
    Interpretates the first element as a flag indicating if the system is signed (1) or unsigned (0).
    Second element indicates the number of bits for the integer part.
    Third is number of bits for fractionary part.
    '''

    def __init__(self, arg_list: list):
        self.argument_list = arg_list
        self.is_valid = self.validate()

    def validate(self):
        self.is_valid = len(self.argument_list) == 3 and all(isinstance(x, int) for x in self.argument_list) and (self.argument_list[0] == 0 or self.argument_list[0] == 0)

    def get_resolution(self):
        return 2 ** -self.argument_list[2]

    def get_range(self):
        return 2 ** self.argument_list[1] - 2 ** self.argument_list[2]
        '''if (self.argument_list[0]):
            return 2 ** (self.argument_list[1] + self.argument_list[2])
        else:
            return 2 ** (self.argument_list[1] + self.argument_list[2]) - 1''' 