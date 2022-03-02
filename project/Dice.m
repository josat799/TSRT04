classdef Dice
    %DICE A dice object with n number of sides
    %   A Dice with n number of sides.
    %   The Dice class has the methods needed to throw the dice with 
    %   n amount of throws.
    
    properties
        Sides
        Results
        ResultTable
    end
    
    methods
        function obj = Dice(sides)
            %DICE Creates a dice with n sides.
            %   Creates a dice with n number of sides.
            obj.Sides = sides;
        end
        
        function obj = throwDice(obj, repeats)
            %   throw_dice Throws the dice
                %   Throws the dice for specific amount of times and 
                %   returns in a vector.

            rnd = (obj.Sides).*rand(repeats, 1);         
            obj.Results = ceil(rnd);
        end

        function obj = countDices(obj) 
            %   count_round Counts the amount of dublicates
                %   Count each unique value from a throw and returns it in a 
                %   vector 
            [Repeats, SideNumber] = groupcounts(obj.Results'');

            obj.ResultTable = table(SideNumber, Repeats);
        end

        function vector = getResult(obj)
            vector = obj.ResultTable;
        end

        function vector = mostCommonDice(obj)
            % mostCommonDice returns the dice that is most common from set
            % of throws

            a = sortrows(obj.ResultTable, 2, 'descend');
            vector = a(1,:);
        end
    end
end

