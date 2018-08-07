% Termination operator **UNFINISHED**

function [result, terminate] = termination_condition(population, fitness, prev_gen_result, delta)
    min_diversity = 230;
    diversity = sum(pdist(population, 'hamming'));
    mean_fitness = mean(fitness);
    max_fitness = max(fitness);
    result = [diversity, mean_fitness, max_fitness];
    %if((abs(result(2)-prev_gen_result(2))<= delta) & (diversity <= min_diversity)) 
    if((abs(result-prev_gen_result)<= delta) & (diversity <= min_diversity)) 
    %if((abs(result-prev_gen_result)<= delta))
        terminate = true;
    else
        terminate = false;
    end
end