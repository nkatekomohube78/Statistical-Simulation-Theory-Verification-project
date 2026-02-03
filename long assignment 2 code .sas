
/*question 3 of long assignment*/
/* A */
data sim_data;
    call streaminit(123); 
    do id = 1 to 500;
        array x[20];
        do i = 1 to 20;
            x[i] = rand("Normal", 0, 1);
        end;
        output;
    end;
run;
/* B */
data sim_data;
    call streaminit(123);
    do id = 1 to 500;

        
        array x[20] x1-x20;
        do i = 1 to 20;
            x[i] = rand("Normal", 0, 1);
        end;

       
        array x_noise[20] x21-x40;
        do j = 1 to 20;
            x_noise[j] = rand("Normal", 0, 1);
        end;

        output;
    end;
run;

/* C */
data sim_data;
    call streaminit(123); 
    array beta[20] _temporary_ (1.5 -1.2 0.9 -0.8 1.1 0.7 -1.0 0.5 -0.6 1.3 0.4 -1.1 0.8 -0.9 1.2 -0.7 0.6 -1.3 0.3 0.8);
    do id = 1 to 500;

        
        array x[20] x1-x20;
        do i = 1 to 20;
            x[i] = rand("Normal", 0, 1);
        end;

        
        array x_noise[20] x21-x40;
        do j = 1 to 20;
            x_noise[j] = rand("Normal", 0, 1);
        end;

        
        y = 2; /* beta_0 = 2 */
        do k = 1 to 20;
            y + beta[k] * x[k];
        end;
        y + rand("Normal", 0, 1); 

        output;
    end;
run;

/* question 4*/
proc glmselect data=sim_data plots=all;
    model y = x1-x40
        / selection=lasso(choose=cv stop=none)
          cvmethod=random(5);
    title "LASSO Path Plot Using PROC GLMSELECT";
run;

/* C */
proc glmselect data=sim_data plots=all;
    model y = x1-x40
        / selection=lasso(choose=cv stop=none)
          cvmethod=random(5);
    title "Final LASSO Model";
run;
