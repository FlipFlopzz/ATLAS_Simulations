%--------------- ASSUMING EACH PLAYER IS RAITONAL ---------------%
num_players = 5; % Number of players
num_simulations = 10000; % Number of trials to simulate

% Initialize score matrix
scores = zeros(num_simulations, num_players);

% Loop through each trial
for i = 1:num_simulations
    % Generate random numbers for each player
    player_nums = randi([0 10], 1, num_players);
    
    % Calculate sum of all player numbers
    total_sum = sum(player_nums);
    
    % Subtract sum from 50
    result = 50 - total_sum;
    
    % Calculate each player's score
    for j = 1:num_players
        scores(i,j) = result * player_nums(j);
    end
end

% Calculate each player's average score across all trials
avg_scores = mean(scores);

% Print out the scores
disp('Player Scores (ASSUMING RATIONALITY):');
for i = 1:num_players
    fprintf('Player %d: %.2f\n', i, avg_scores(i));
end

%--------------- ASSUMING 4 PLAYERS ARE RAITONAL AND 1 IS BOLD ---------------%

% Initialize matrix to store scores
scores = zeros(num_players, num_simulations);

% Run simulations
for i = 1:num_simulations
    % Generate random submissions for each player
    submissions = randi(10, 1, num_players);
    
    % Calculate sum of submissions
    sum_submissions = sum(submissions);
    
    % Calculate final score for each player
    for j = 1:num_players
        if j == 1
            % Bold player: subtract sum of other submissions from 50
            final_score = (50 - sum_submissions) * submissions(j);
        else
            % Altruistic players: subtract sum of all submissions from 50
            final_score = (50 - sum_submissions + submissions(j)) * submissions(j);
        end
        scores(j,i) = final_score;
    end
end

% Calculate average score for each player
average_scores = mean(scores, 2);

% Display scores
disp('Player Scores (ASSUMING 1 BOLD AND 4 RATIONAL):');
for i = 1:num_players
    fprintf('Player %d: %.2f\n', i, average_scores(i));
end

%--------------- ASSUMING 4 PLAYERS ARE BOLD AND 1 IS RATIONAL ---------------%

% Initialize matrix to store scores
scores = zeros(num_players, num_simulations);

% Run simulations
for i = 1:num_simulations
    % Generate random submissions for each player
    submissions = randi(10, 1, num_players);
    
    % Calculate sum of submissions
    sum_submissions = sum(submissions);
    
    % Calculate final score for each player
    for j = 1:num_players
        if j == 1
            % Bold player: subtract sum of other submissions from 50
            final_score = (50 - sum_submissions + submissions(j)) * submissions(j);
        else
            % Altruistic players: subtract sum of all submissions from 50
            final_score = (50 - sum_submissions) * submissions(j);
        end
        scores(j,i) = final_score;
    end
end

% Calculate average score for each player
average_scores = mean(scores, 2);

% Display scores
disp('Player Scores (ASSUMING 4 BOLD AND 1 RATIONAL):');
for i = 1:num_players
    fprintf('Player %d: %.2f\n', i, average_scores(i));
end

%--------------- REASONING FOR ANSWER ---------------%
disp('The tests showed that on average people who were "rational" were often better off than those who were not. However, there were actually some cases where those who were bold had the off-chance of winning. Predicting the nature of human thinking is not possible now, but it may be in the future. Though based on these tests, we can assume it should be between 116-154, going with the mean, around 135.')