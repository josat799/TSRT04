%% Test 1
% Tests dice class
disp("Running tests");
d = Dice(6); 
d = d.throwDice(500);

d = d.countDices;
d.getResult()
d.mostCommonDice.SideNumber
d.ResultTable.Repeats
disp(find(d.ResultTable{:,:} == d.mostCommonDice.SideNumber ))

%selectedDice.Repeats = selectedDice.Repeats + d.ResultTable.Repeats(find(d.ResultTable{:,:}==selectedDice.SideNumber));
%d.mostCommonDice()

%figure
%histogram('BinEdges',-2:2 ,'BinCounts',[5 8 15 9])
%plot(10)
% histogram(d.Result);
%% TEST 1.1
A = [
    0 1/6 1/36 1/216 1/1296; 
    0 5/6 10/36 15/216 25/1296; 
    0 0 25/36 80/216 250/1296; 
    0 0 0 120/216 900/296; 
    0 0 0 0 120/296];

e_1 = [1 0 0 0 0];
e_5 = [0 0 0 0 1]';
inVector = 1:10;

for index = 1 : length(inVector)
    vector(index) = e_1*(A^inVector(index))*e_5;
end

disp(vector);
figure
plot(vector);

%% Test 2
tic
[exp_, var_] = yatzy(1000);
toc
disp(var_);
disp(exp_);