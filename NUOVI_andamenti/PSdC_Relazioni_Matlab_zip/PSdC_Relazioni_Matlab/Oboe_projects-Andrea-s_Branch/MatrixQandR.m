    


switch condition 
        case 1  %expensive vs cheap control cases
             Q1 = diag([1,1,1,1]);
             R1 = 2;

        case 2  %expensive vs cheap control cases
             Q1 = diag([1,1,1,1]);
             R1 = 1;

        case 3  %expensive vs cheap control cases
             Q1 = diag([1,1,1,1]);
             R1 = 0.5;

        case 4  %different weights for alpha
             Q1 = diag([10,1,1,1]);
             R1 = 2;
             
        case 5  %different weights for alpha
             Q1 = diag([100,1,1,1]);
             R1 = 2;
        case 6  %different weights for beta
             Q1 = diag([1,10,1,1]);
             R1 = 2;
        case 7  %different weights for beta
             Q1 = diag([1,100,1,1]);
             R1 = 2;
        case 8  %different weights for alpha dot
             Q1 = diag([1,1,10,1]);
             R1 = 2;
        case 9  %different weights for alpha dot
             Q1 = diag([1,1,100,1]);
             R1 = 2;     
        case 10  %different weights forbeta dot
             Q1 = diag([1,1,1,10]);
             R1 = 2;
        case 11  %different weights for beta dot
             Q1 = diag([1,1,1,100]);
             R1 = 2;    
             
        case 12  %only relative value are important when defining the weights
             Q1 = diag([1,1,1,1]);
             R1 = 2;
        case 13  %only relative value are important when defining the weights
             Q1 = diag([0.001,0.001,0.001,0.001]);
             R1 = 0.002;     
        case 14  %
             Q1 = diag([1,1,0,0]);
             R1 = 2;
        case 15  %
             Q1 = diag([10,10,0,0]);
             R1 = 0.002;      
        case 16  %
             Q1 = diag([1,1,1,1]);
             R1 = 2;
        case 17  %
             Q1 = diag([10,10,10,10]);
             R1 = 2;   
        case 18  %
             Q1 = diag([1,0,0,0]);
             R1 = .5;
        case 19  %
             Q1 = diag([0,1,1,1]);
             R1 = .5;      
        case 25
             Q1 = diag([100,1,25,1]);
             R1 = 2;
        case 26
             Q1 = diag([100,10,1,1]);
             R1 = 2;
        case 27
             Q1 = diag([100,50,1,1]);
             R1 = 2;
        case 28 %%test
             Q1 = diag([10,1,10,1]);
             R1 = 2;
        otherwise
    end

K = lqr(A,B,Q1,R1);
autovalori = eig(A-B*K);
%%
% sys = ss(A, B, C, D);
% sysd = c2d(sys, 0.002);
% K = dlqr(sysd.A,sysd.B,Q1,R1);
% autovalori = eig(sysd.A-sysd.B*K);