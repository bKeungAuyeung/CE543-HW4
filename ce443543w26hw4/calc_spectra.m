clear all
close all
clc

time = xlsread('Centrifuge_acc_NJM02.xlsx','Acc','A3:A2002');
acc = xlsread('Centrifuge_acc_NJM02.xlsx','Acc','B3:B2002');

periods = [logspace(log10(0.01),log10(10),300)]';
damping = 0.05;

psa = rspec(time,acc,periods,damping);
