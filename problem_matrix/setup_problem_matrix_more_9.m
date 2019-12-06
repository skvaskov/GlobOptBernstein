function [cost,constraints,feasible_point] = setup_problem_matrix_more_9(num)
% Wood / 10
cost = [[   0,   0,   0,   0,                        12209408.2]
        [ 1.0,   0,   0,   0,                       -88000044.0]
        [ 2.0,   0,   0,   0,                       248000040.0]
        [ 3.0,   0,   0,   0,                      -320000000.0]
        [ 4.0,   0,   0,   0,                       160000000.0]
        [   0, 1.0,   0,   0,                        -4400880.0]
        [   0, 2.0,   0,   0,                          400404.0]
        [ 1.0, 1.0,   0,   0,                        16000000.0]
        [ 2.0, 1.0,   0,   0,                       -16000000.0]
        [   0,   0, 1.0,   0,                         -792044.0]
        [   0,   0, 2.0,   0,                         2232040.0]
        [   0,   0, 3.0,   0,                        -2880000.0]
        [   0,   0, 4.0,   0,                         1440000.0]
        [   0,   0,   0, 1.0,                          -40480.0]
        [   0,   0,   0, 2.0,                            4004.0]
        [   0, 1.0,   0, 1.0,                             792.0]
        [   0,   0, 1.0, 1.0,                          144000.0]
        [   0,   0, 2.0, 1.0,                         -144000.0]];

degree = [  0, 0, 0, 0;
            2, 0, 0, 0;
            0, 2, 0, 0;
            0, 0, 2, 0;
            0, 0, 0, 2;
            1, 1, 0, 0;
            0, 1, 1, 0;
            1, 0, 1, 0;
            1, 0, 0, 1;
            0, 1, 0, 1;
            0, 0, 1, 1;
            1, 0, 0, 0;
            0, 1, 0, 0;
            0, 0, 1, 0;
            0, 0, 0, 1];
         
constraints = cell(num,1);

% This is the global optimum of Wood / 10
% f(x) = 0
feasible_point = [0.55;
                  0.55;
                  0.55;
                  0.55];

for i = 1:num
    rand_num = 10 * rand(14,1) - 5;
    coef = [0;rand_num];
    con_mat = [degree,coef];
    diff = evaluate_function(con_mat,feasible_point);
    if diff >= 0
        con_mat(1,5) = con_mat(1,5) - diff - rand() / 10;
    end
    
    constraints(i) = {con_mat};
end

end

