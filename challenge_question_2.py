import random
from sets import Set
import numpy
random.seed(123)

num_cars = 10             #Total number of cars (M)
num_trials = 50          #Total number of turns (T)
total_num_positions = 25 #Total number of positions (N)
car_position = {}       #Dictionary to store car positions

# Initialize dictionary of cars and their corresponding positions
for i in range(0, num_cars):
    car_position[i] = i

set_of_positions = Set()
# Initialize a set of all occupied positions
for i in range(0, num_cars):
    set_of_positions.add(i)


moves_in_all_trails = []    #Position of the moved car in each turn


for t in range(0, num_trials):
    possible_moves = []
    for car, position  in car_position.items():
        next_position = (position+1)%total_num_positions
        if next_position not in set_of_positions:
            possible_moves.append([position, next_position])
    #Choose a valid move randomly from possible moves
    random_sample = random.sample(possible_moves,1)
    
    selected_move = random_sample[0][1]
    
    moves_in_all_trails.append(selected_move)

    # Now move cars around based on the sampled move
    car_position[random_sample[0][0]] = selected_move
    set_of_positions.discard(random_sample[0][0])
    set_of_positions.add(selected_move)


print '%.10f' % numpy.mean(moves_in_all_trails)
print '%.10f' % numpy.std(moves_in_all_trails)
print '%.10f' % (numpy.std(moves_in_all_trails)/num_trials)

