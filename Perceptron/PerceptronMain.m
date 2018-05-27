while (1)
    X = "one";
    #disp("Enter the value - one to eight, in words - corresponding to the operation that you want to perform\nEnter X to exit\n")
    X = input("Enter the Enter the operation that you want to perform: AND, OR, NAND, NOR, XOR\nEnter X to exit\n", "s")
    if (strcmp (X, "X") == 1 || strcmp (X, "x") == 1)
      break;
    endif  
    switch (X)
      case "AND"
        targetOutput = [1; -1; -1; -1];
        Perceptron (targetOutput);
      case "OR"
        targetOutput = [1; 1; 1; -1];
        Perceptron (targetOutput);
      case "NAND"
        targetOutput = [-1; 1; 1; 1];
        Perceptron (targetOutput);
      case "NOR"
        targetOutput = [-1; -1; -1; 1];
        Perceptron (targetOutput);
      case "XOR"
        targetOutput = [-1; 1; 1; -1];
        Perceptron (targetOutput);
    endswitch
endwhile