## How The Program Works

Text files have been added into the programs directory. Determine if you would like the files to be displayed by the customer's name or by the vehicle type.

Run ruby customer-sorter.rb <sorting_method>. For example, to run the program to sort by customer name, enter the following into the command line interface:
ruby customer-sorter.rb name

Vice versa, to run the program to sort by vehicles, enter the following into the command line interface:
ruby customer-sorter.rb vehicle

If new files are introduced, simply add them as a variable by following the structure of lines 1 and 2. Then, underneath the class, add the variable and follow the same structure using variableName.each to iterate through the file and split the data into a the appropriate format for the data.
