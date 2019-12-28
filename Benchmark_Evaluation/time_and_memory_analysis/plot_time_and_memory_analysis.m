%% description
% This script plots the number of Bernstein patches (i.e., the length of
% the list) versus the number of iterations of PCBA for each of the 8
% benchmark problems.
%
% Author: Shreyas Kousik
% Created: 28 Dec 2019
% Updated: -
%
%% user parameters
% which problem to plot
problem_index = 1 ;

% whether or not to save the output
save_pdf_flag = true ;

%% automated from here
% load data
load(['P',num2str(problem_index),'_time_and_memory_info.mat'])

%% process data
% get the number of iterations
num_iter = (find(bernstein_memory == 0,1,'first') - 1 ) / 2

%% plot
figure(1) ; clf ; hold on ;

%% save figure


