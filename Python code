### In this pythonyé code we will create an application for calculating the fare for the rental operations.
### Our goals are:
* Application can calculate the fare of rented e-scooters according to usage time or usage distance.
* Application is controlled via the console.
* Users can make inputs via the console.
* Outputs are returned via the console.
* GUI is not required

#if the customer has no input. We will use variable no_valid_input

no_valid_input = 'No valid input received. Please try again.'

# Defining a function for a common information like main

def main():
    print('Welcome to ScooTec GmbH! Your leading mobility company in Hamburg.')
    name = input('Please enter your name: ')
    print('Hello ' + name + '!')
    print('Please select your payment model.')
    print('Enter (1) if you want to pay by hour. Enter (2) if you want to pay for distance.')
    user_in = get_input()
    
# Using if-else statements if-else statement to select between two alternatives.
    if user_in == "1":
        print('You selected pay by hour.')
        amount = payment_model_one(get_duration())
        print('Your payment total is ' + str(amount) + ' euro.')
    elif user_in == "2":
        print('You selected pay for distance.')
        amount2 = payment_model_two(get_distance())
        print('Your payment total is ' + str(amount2) + ' euro.')
        
# Defining functions to choose one of the 2 choices: pay for distance or by hour
def get_input():
    value = input('Enter (1) or (2): ')
    #! replaced "or" with "and"; made the numbers strings, because integer 1 is not equal to the string "1"
    if value != "1" and value != "2":
        print(no_valid_input)
        #! JAKOB: Recursive call was missing
        return get_input()
    else:
        return value

# Defining function like get_duration. Definition of numbers and error if not correct input and returning to that function
def get_duration() -> int:
    str_duration = input('Please enter duration in minutes, for example "20" (without quotation marks): ')
    try:
        int_duration = int(str_duration)
        if int_duration <= 0 or int_duration > 300:
            print(no_valid_input)
            return get_duration()
        else:
            #! JAKOB: remove parentheses, because int_duration is a variable and not a function
            # "return int_duration()" -> "return int_duration"
            return int_duration
    except ValueError:
        print(no_valid_input)
        return get_duration()

def payment_model_one(duration: int):
    print('The cost per minute is 50 cent.')
    print('How long do you want to rent the scooter?')
    print('You entered ' + str(duration) + ' minutes.')
    return 0.5 * float(duration)
