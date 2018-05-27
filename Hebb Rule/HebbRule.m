function HebbRule (inputs, targetOutput)
  % inputs x1, x2 and bias
  % inputs = [1, 1, 1; 1, -1, 1; -1, 1, 1; -1, -1, 1];
  % weights are w1, w2 and b and have been initialized to 0
  weights = [0, 0, 0];
  for i = 1:rows(inputs)
    deltaW = 0;
    for j = 1:columns(inputs)
      % printf("z(%d,%d) = %f\n", i, j, inputs(i,j));
      deltaW(j) = inputs(i, j)*targetOutput(i);
      weights(j) += deltaW(j);
    endfor
    plot(inputs(i, 1), inputs(i, 2), "b")
    hold on
    % disp(inputs(i, 1), inputs(i, 2));
    % printf("(%d,%d)\n", inputs(i, 1), inputs(i, 2));
    disp (weights);
    hold on
  endfor
  x = -10:0.1:10;
  y = (-weights(1)/weights(2))*x - (weights(3)/weights(2));
  plot(x, y, "r")
  % disp ("Final separation line (color) : "), disp(colors(i));
endfunction