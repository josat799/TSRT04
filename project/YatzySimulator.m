function result = YatzySimulator(debug)
%YATZYSIMULATOR Summary of this function goes here
%   Simulates how many throws needed to get Yatzy. When done it returns 
% the number of throws needed.
    
    
    % Creates a Dice object with six (6) sides [1 ... 6].
    d = Dice(6);

    
    if debug
        fprintf("The current round is %d \n", 1);
        fprintf("%d dices will be thrown \n", 5);
    end
    
    % Throws five dices 
    d = d.throwDice(5);
    
    % Counts dices
    d = d.countDices;

    
    if debug
        % Dispalys the most common Dice and it's occurrences
        fprintf("The most common dice side and it's occurrences \n");
        disp(d.mostCommonDice);
    end
    

    % Updates the occurrences
    selectedDice = d.mostCommonDice;
   
    % Initiate loop
    repeats = 1;
    
    while selectedDice.Repeats < 5 
        if debug
            disp(selectedDice);
        end
        

        % Increases the repeat counter by 1
        repeats = repeats + 1;
        
        if debug 
            fprintf("The current round is %d \n", repeats);
            fprintf("%d dices will be thrown \n", 5-selectedDice.Repeats);
        end
        
        
        % Throws five dices 
        d = d.throwDice(5-selectedDice.Repeats);
    
        % Counts dices
        d = d.countDices;

        if debug 
            % Dispalys the most common Dice and it's occurrences and set it as
            % the new one
            fprintf("The most common dice side and it's occurrences \n");
            disp(d.mostCommonDice);
        end
        

        index = find(d.ResultTable.SideNumber==selectedDice.SideNumber);
        
        if d.mostCommonDice.Repeats > selectedDice.Repeats
            selectedDice = d.mostCommonDice;
        elseif index > 0
            selectedDice.Repeats = selectedDice.Repeats + d.ResultTable.Repeats(index);
        end       
    end
    
    if debug 
        fprintf("YATZY in %d and it took %d throws! \n", selectedDice.SideNumber, repeats);
        disp(selectedDice);
    end
    
    result = repeats;
end

