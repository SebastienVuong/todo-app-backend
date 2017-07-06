/* MOCK DATA : ADDING USERS */
INSERT INTO users (username, name, email, password)
VALUES 
('Wonton', 'Jane Wu', 'jane.wu@gmail.com', 'hunter1'),
('Sunny', 'Anna Nguyen', 'anna.nguyen@gmail.com', 'hunter2'),
('Lynx', 'LingXin He', 'lingxin.he@gmail.com', 'hunter3'),
('SebWong', 'Sebastian Michaelis Wong', 'sebastian.michaelis.wong@gmail.com', 'hunter4'),
('BabyChubz', 'Xue Ying Chua', 'xue.ying.chua@gmail.com', 'hunter5'),
('YoYo', 'Yohan Tierney', 'yohan.tierney@gmail.com', 'hunter6');

/* FOLOWING MOCK DATA GENERATED USING www.mockaroo.com */

/* MOCK DATA : ADDING TASKS */
insert into tasks (userId, title, description, status, dueDate, starred) values (3, 'lacus morbi quis tortor', 'nulla quisque arcu libero rutrum', 'Pending', '2017/07/02', true);
insert into tasks (userId, title, description, status, dueDate, starred) values (2, 'integer tincidunt', 'cum sociis natoque penatibus et magnis dis parturient', 'Done', '2017/06/18', true);
insert into tasks (userId, title, description, status, dueDate, starred) values (6, 'porttitor lorem', 'cras mi pede malesuada', 'Pending', '2017/08/04', false);
insert into tasks (userId, title, description, status, dueDate, starred) values (3, 'neque sapien', 'nec condimentum neque sapien placerat ante nulla', 'Done', '2017/08/03', true);
insert into tasks (userId, title, description, status, dueDate, starred) values (2, 'ultrices libero non', 'libero nullam sit amet turpis', 'Done', '2017/07/10', false);
insert into tasks (userId, title, description, status, dueDate, starred) values (6, 'justo in hac habitasse', 'ligula suspendisse ornare consequat lectus in est risus', 'Pending', '2017/07/19', false);
insert into tasks (userId, title, description, status, dueDate, starred) values (6, 'est quam', 'nisl nunc rhoncus dui', 'Pending', '2017/06/18', false);
insert into tasks (userId, title, description, status, dueDate, starred) values (6, 'dignissim vestibulum vestibulum ante', 'congue etiam justo etiam', 'Done', '2017/07/31', false);
insert into tasks (userId, title, description, status, dueDate, starred) values (2, 'donec ut', 'id pretium iaculis diam erat', 'Pending', '2017/06/24', true);
insert into tasks (userId, title, description, status, dueDate, starred) values (3, 'aenean fermentum donec ut', 'fusce consequat nulla nisl nunc nisl', 'Done', '2017/07/23', true);
insert into tasks (userId, title, description, status, dueDate, starred) values (6, 'odio elementum eu interdum', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum', 'Done', '2017/06/24', false);
insert into tasks (userId, title, description, status, dueDate, starred) values (4, 'hac habitasse', 'convallis duis consequat dui', 'Done', '2017/07/26', true);

/* MOCK DATA : ADDING SUB TASKS */
insert into subtasks (taskId, title, description, status) values (11, 'arcu adipiscing', 'ultrices posuere cubilia curae nulla', 'Pending');
insert into subtasks (taskId, title, description, status) values (4, 'diam id ornare', 'magnis dis parturient montes nascetur ridiculus mus etiam', 'Pending');
insert into subtasks (taskId, title, description, status) values (7, 'sem fusce consequat nulla', 'urna pretium nisl ut volutpat', 'Pending');
insert into subtasks (taskId, title, description, status) values (11, 'orci eget', 'praesent id massa id nisl venenatis lacinia aenean', 'Pending');
insert into subtasks (taskId, title, description, status) values (2, 'a feugiat', 'enim leo rhoncus sed vestibulum sit amet cursus', 'Pending');
insert into subtasks (taskId, title, description, status) values (5, 'molestie hendrerit at vulputate', 'habitasse platea dictumst maecenas', 'Pending');
insert into subtasks (taskId, title, description, status) values (1, 'sapien arcu sed augue', 'lacinia sapien quis libero nullam sit amet turpis', 'Done');
insert into subtasks (taskId, title, description, status) values (10, 'vestibulum ac est lacinia', 'ut massa quis augue luctus tincidunt nulla mollis', 'Pending');
insert into subtasks (taskId, title, description, status) values (2, 'eget tempus', 'est lacinia nisi venenatis tristique', 'Pending');
insert into subtasks (taskId, title, description, status) values (8, 'sit amet cursus', 'proin at turpis a', 'Pending');
insert into subtasks (taskId, title, description, status) values (5, 'imperdiet et commodo vulputate', 'in eleifend quam a odio in hac habitasse', 'Done');
insert into subtasks (taskId, title, description, status) values (8, 'integer aliquet massa', 'diam neque vestibulum eget vulputate ut', 'Pending');
insert into subtasks (taskId, title, description, status) values (7, 'interdum venenatis turpis enim', 'quam a odio in hac habitasse', 'Pending');
insert into subtasks (taskId, title, description, status) values (4, 'diam erat', 'erat volutpat in congue etiam justo etiam', 'Pending');
insert into subtasks (taskId, title, description, status) values (11, 'pede libero', 'sit amet nulla quisque arcu libero rutrum', 'Pending');
insert into subtasks (taskId, title, description, status) values (6, 'libero nam dui proin', 'cursus urna ut tellus nulla', 'Pending');
insert into subtasks (taskId, title, description, status) values (5, 'venenatis non sodales sed', 'amet justo morbi ut odio cras mi pede', 'Pending');
insert into subtasks (taskId, title, description, status) values (8, 'erat volutpat in congue', 'hendrerit at vulputate vitae nisl aenean lectus', 'Pending');
insert into subtasks (taskId, title, description, status) values (3, 'rutrum nulla tellus', 'platea dictumst etiam faucibus cursus', 'Pending');
insert into subtasks (taskId, title, description, status) values (4, 'arcu sed augue aliquam', 'vel nisl duis ac nibh', 'Done');

/* MOCK DATA : ADDING SESSIONS */
insert into sessions (userId, token) values (6, 'AmMwDgAVQQz');
insert into sessions (userId, token) values (5, 'N7qIPUyjWs5');
insert into sessions (userId, token) values (5, 'mPvw4pwf');
insert into sessions (userId, token) values (2, 'nr7PtAW5xh');
insert into sessions (userId, token) values (6, 'wgpgFBAy');
insert into sessions (userId, token) values (3, 'vSGJYjbymwTO');
insert into sessions (userId, token) values (3, 'Qqub6yS3');
insert into sessions (userId, token) values (1, 'qDrbQz');
insert into sessions (userId, token) values (6, 'MOwk1ZO6pd');
insert into sessions (userId, token) values (4, 'qkdkYPAB');
insert into sessions (userId, token) values (1, 'sIaSwzwk0J');
insert into sessions (userId, token) values (5, 'OQjDNH88Z');
insert into sessions (userId, token) values (6, 'WND3YiU');
insert into sessions (userId, token) values (2, 'EnRVQw6D5');
insert into sessions (userId, token) values (5, 'ELtiQSoTnJB');
insert into sessions (userId, token) values (3, 'K3fzuj');
insert into sessions (userId, token) values (2, 'nGzjDAMbiy');
insert into sessions (userId, token) values (6, 'JQ5XwA3R');
insert into sessions (userId, token) values (6, 'R9bPVK1R');
insert into sessions (userId, token) values (6, '1kKR10fO');
insert into sessions (userId, token) values (6, 'F8qpzHs5BJBf');
insert into sessions (userId, token) values (5, 'M2HcI1dRWRf');
insert into sessions (userId, token) values (1, 'yru99sAT8og');
insert into sessions (userId, token) values (6, 'AO6eFeNBPYf');
insert into sessions (userId, token) values (4, 'OswqbUi1AkEw');
insert into sessions (userId, token) values (6, 'p8vmKS');
insert into sessions (userId, token) values (2, 'cCxcox');
insert into sessions (userId, token) values (3, 'yZQHXk');
insert into sessions (userId, token) values (6, 'aYwAeY');
insert into sessions (userId, token) values (5, 'ZSzSUgb');
insert into sessions (userId, token) values (3, 'xnzJlTkd2i0p');
insert into sessions (userId, token) values (6, 'On1TAFdh');
insert into sessions (userId, token) values (6, 'pkfQ2Uu');
insert into sessions (userId, token) values (5, 'ZuRktSOZoq');
insert into sessions (userId, token) values (2, 'jeY7TQ7ZKP');
insert into sessions (userId, token) values (4, 'Obzov3wF');
insert into sessions (userId, token) values (6, '9qXRxS2276');
insert into sessions (userId, token) values (3, 'YZyj1S1');
insert into sessions (userId, token) values (3, 'IkoABu');
insert into sessions (userId, token) values (4, 'fX4qqv9ILe');
insert into sessions (userId, token) values (4, 'j33IzhLO4z8');
insert into sessions (userId, token) values (3, 'yxTn0FFVuO');
insert into sessions (userId, token) values (1, '4BBxjdM');
insert into sessions (userId, token) values (6, 'LMAKkS');
insert into sessions (userId, token) values (5, 'm66Zp8imrfJs');
insert into sessions (userId, token) values (5, 'TVb9Zo');
insert into sessions (userId, token) values (1, 'j5mvLVyY7SEB');
insert into sessions (userId, token) values (3, 'G6Uq6lk');
insert into sessions (userId, token) values (2, 'cwxy5Pq7ev3');
insert into sessions (userId, token) values (1, 'Jd0oz5uaYE9');
insert into sessions (userId, token) values (3, 'LlygfjZd');
insert into sessions (userId, token) values (2, 'cW0RRq30Q8dt');
insert into sessions (userId, token) values (1, 'Wvft1MYSOQI');
insert into sessions (userId, token) values (5, 'CTJsT5n9UkZ7');
insert into sessions (userId, token) values (6, 'WNIOP9');
insert into sessions (userId, token) values (3, 'KtUFXsO4os');
insert into sessions (userId, token) values (4, 'g99yhZ');
insert into sessions (userId, token) values (3, 'tMsN2dR7rrP');
insert into sessions (userId, token) values (3, '4lUSbpUL');
insert into sessions (userId, token) values (1, '1E9WrGGdJi');
insert into sessions (userId, token) values (1, 'rFMmbrH5E');
insert into sessions (userId, token) values (2, 'FilmUIhne');
insert into sessions (userId, token) values (4, '81WTt38qG');
insert into sessions (userId, token) values (6, 'xHVqrWj9I8Zy');
insert into sessions (userId, token) values (2, 'WRhC5gS');
insert into sessions (userId, token) values (6, 'PqA0fDjs');
insert into sessions (userId, token) values (1, 'CPpRasNKVI3');
insert into sessions (userId, token) values (2, '8WdgwwyQTp');
insert into sessions (userId, token) values (4, 'BlxyTi6Nb');
insert into sessions (userId, token) values (2, 'oHyuzX5CKhp');
insert into sessions (userId, token) values (6, 'M36Rc2hsB3');
insert into sessions (userId, token) values (2, 'ECU6TIeM0IsQ');
insert into sessions (userId, token) values (4, 'pDxD9pLp1U2Z');
insert into sessions (userId, token) values (5, '05okNovl1e');
insert into sessions (userId, token) values (5, 'T54iY5KP2HSq');
insert into sessions (userId, token) values (2, 'Sw1CtfjwMz');
insert into sessions (userId, token) values (3, 'MuCn9SOH2H');
insert into sessions (userId, token) values (2, 'F1efFXqK4ToQ');
insert into sessions (userId, token) values (4, 'Ws589ENbyc');
insert into sessions (userId, token) values (4, 'B0j1LfIy');
insert into sessions (userId, token) values (1, 'T43Et9RB2JtG');
insert into sessions (userId, token) values (5, 'VRadc0LO6Le');
insert into sessions (userId, token) values (4, 't3zgYJbvH3c');
insert into sessions (userId, token) values (4, 'RQb2HEXS');
insert into sessions (userId, token) values (6, 'WUNc40fE');
insert into sessions (userId, token) values (3, 'rycBoxh');
insert into sessions (userId, token) values (2, 'Qbjrp7Vji');
insert into sessions (userId, token) values (2, 'ILK1rJHLamE');
insert into sessions (userId, token) values (4, 'OtI0V1kRzB');
insert into sessions (userId, token) values (2, 'XJdKHJcHOmV1');
insert into sessions (userId, token) values (5, 'AXRCrvruupmJ');
insert into sessions (userId, token) values (3, 'X3dLRLuKFkK');
insert into sessions (userId, token) values (3, 'N0Z9M0D30');
insert into sessions (userId, token) values (5, 'gr8Q6HlebNE5');
insert into sessions (userId, token) values (6, 'UIK442AUFa');
insert into sessions (userId, token) values (6, 'vgHbcmdgSN');
insert into sessions (userId, token) values (1, 'TFFlGiv');
insert into sessions (userId, token) values (5, '5mmhC6');
insert into sessions (userId, token) values (2, 'BVVh3mLJx');
insert into sessions (userId, token) values (6, 'YlcZbUmpWt5z');