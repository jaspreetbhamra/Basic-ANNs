function Perceptron (targetOutput)
  % inputs are x1, x2 and bias
  inputs = [1, 1, 1; 1, -1, 1; -1, 1, 1; -1, -1, 1];
  disp(inputs(:,1)');
  % weights are w1, w2 and b and have been initialized to some random numbers
  weights = [rand(1), rand(1), rand(1)];
  theta = 0;
  alpha = 1;
  previousWeights = weights;
  do
    for i = 1:rows(inputs)
      previousWeights = weights;
      deltaW = 0;
      yin = 0;
      y = 0;
      for j = 1:columns(inputs)
        % printf("z(%d,%d) = %f\n", i, j, inputs(i,j));
        yin += inputs(i, j) * weights(j);
        % disp ("In the yin loop");
        plot(inputs(i, 1), inputs(i, 2), "b")
        hold on
      endfor
      if (yin>theta)
        y = 1;
      elseif (yin<-theta)
        y = -1
      else
        y = 0
      endif
      if (y != targetOutput(i))
        % disp ("y is not equal to the targetOutput");
        for j = 1:columns(inputs)
          deltaW(j) = inputs(i, j)*targetOutput(i)*alpha;
          weights(j) += deltaW(j);
        endfor
      endif
      % plot(inputs(i, 1), inputs(i, 2), "b")
      % hold on
      % disp(inputs(i, 1), inputs(i, 2));
      % printf("(%d,%d)\n", inputs(i, 1), inputs(i, 2));
      disp ("Weights in the current epoch: ");
      disp (weights);
      hold on
    endfor
  until (all(previousWeights==weights))
  x = -5:0.1:5;
  y = (-weights(1)/weights(2))*x - (weights(3)/weights(2));
  plot(x, y, "r")
  % disp ("Final separation line (color) : "), disp(colors(i));
endfunction