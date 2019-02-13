import matlab.engine
import matlab
eng = matlab.engine.start_matlab()
number_of_args_out = 0 
return_value = eng.averageFunc("[2,10]")
print(return_value)