function [mHat, s2Hat] = CalcDist(inputVector)
%CalcDist Calculates the varians and expcted value for a vector
%   

    n = length(inputVector);

    function expectedValue = getExpectedValue()
        expectedValue = 0;
        for val = inputVector
            expectedValue = expectedValue + val;
        end

        expectedValue = expectedValue/n;
    end

    function variance = getVariance() 
        variance = 0;
        for val = inputVector
            variance = variance + (val-mHat).^2;
        end

        variance = variance / (n-1);

    end

    mHat = getExpectedValue;
    s2Hat = getVariance;
    
end