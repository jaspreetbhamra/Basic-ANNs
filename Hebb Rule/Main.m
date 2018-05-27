while (1)
    X = "one";
    inputFormat = input("Enter the kind of input to be considered(binary or bipolar). Enter X or x to exit\n", "s")
    inputFormat = tolower(inputFormat);
    if (strcmp (inputFormat, "x") == 1)
      break;
    endif 
    switch (inputFormat)
      case "binary"
        % inputs are x1, x2 and bias
        inputs = [1,1,1; 1,0,1; 0,1,1; 0,0,1];
      case "bipolar"
        % inputs are x1, x2 and bias
        inputs = [1,1,1; 1,-1,1; -1,1,1; -1,-1,1];
    endswitch
    outputFormat = input("Enter the kind of output to be considered(binary or bipolar). Enter X or x to exit\n", "s")
    outputFormat = tolower(outputFormat);
    if (strcmp (inputFormat, "x") == 1)
      break;
    endif 
    switch (outputFormat)
      case "binary"
        % Each column of the matrix represents the output for a given gate in the order mentioned in the print statement below
        targetOutput = [1,1,0,0,0; 0,1,1,0,1; 0,1,1,0,1; 0,0,1,1,0];
      case "bipolar"
        % Each column of the matrix represents the output for a given gate in the order mentioned in the print statement below
        targetOutput = [1,1,-1,-1,-1; -1,1,1,-1,1; -1,1,1,-1,1; -1,-1,1,1,-1];
    endswitch
    X = input("Enter the name of the operation that you want to perform: AND, OR, NAND, NOR, XOR. Enter X to exit\n", "s")
    if (strcmp (X, "X") == 1 || strcmp (X, "x") == 1)
      break;
    endif  
    switch (X)
      case "AND"
        % targetOutput = [1; -1; -1; -1];
        HebbRule(inputs, targetOutput(:, 1)');
      case "OR"
        % targetOutput = [1; 1; 1; -1];
        HebbRule(inputs, targetOutput(:, 2)');
      case "NAND"
        % targetOutput = [-1; 1; 1; 1];
        HebbRule(inputs, targetOutput(:, 3)');
      case "NOR"
        % targetOutput = [-1; -1; -1; 1];
        HebbRule(inputs, targetOutput(:, 4)');
      case "XOR"
        % targetOutput = [-1; 1; 1; -1];
        HebbRule(inputs, targetOutput(:, 5)');
    endswitch
endwhile