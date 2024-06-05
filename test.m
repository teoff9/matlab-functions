file = "dati_mobili.txt";

data = readmatrix(file);
[m, q, dm, dq] = weighted_reglin(data);
disp([m, q, dm, dq]);
scatter(data(:,1), data(:,2));
hold on
plot(data(:,1),m.*data(:,1)+q)
hold on
[m, q, dm, dq] = reglin(data);
disp([m, q, dm, dq]);
plot(data(:,1),m.*data(:,1)+q);
hold on

