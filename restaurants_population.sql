INSERT INTO restaurants ( name, address ) VALUES
("Hunan Coventry", "1800 Coventry Rd, Cleveland Heights, OH 44118"),
("Jimmy John's", "1827 Coventry Rd, Cleveland Heights, OH 44118"),
("Guy's Pizza Co.", "1838 Coventry Rd, Cleveland Heights, OH 44118"),
("Dave's Cosmic Sub", "1842 Coventry Rd, Cleveland Heights, OH 44118"),
("High Thai'd", "1791 Coventry Rd, Cleveland Heights, OH 44118"),
("Tree Country Bistro", "1803 Coventry Rd, Cleveland Heights, OH 44118"),
("Chipotle Mexican Grill", "11452 Euclid Ave, Cleveland, OH 44106"),
("Qdoba Mexican Grill", "11324 Euclid Ave, Cleveland, OH 44106"),
("Rascal House Pizza Cafe", "11316 Euclid Ave, Cleveland, OH 44106"),
("Potbelly Sandwich Shop", "11425 Euclid Ave, Cleveland, OH 44106"),
("La Dolce Viat", "12112 Mayfield Rd, Cleveland, OH 44106"),
("Mama Santa's", "12301 Mayfield Rd, Cleveland, OH 44106"),
("Trattoria on the Hill", "12207 Mayfield Rd, Cleveland, OH 44106");

INSERT INTO dishes ( name ) VALUES
("Spring Roll"), ("Vegetarian Roll"), ("Barbeque Spare Ribs"), ("Pot Stickers"), ("Butterfly Shrimp"), ("Scallion Pancake"), ("Crab Rangoons"),
("Hacked Chicken"), ("Mussels in Spicey Garlic Sauce"), ("Pu Pu Platter"), ("Hot & Sour Soup"), ("Wonton Soup"), ("Seafood Delight Soup"),
("Chicken Vegetable Soup"), ("Sweet and Sour Pork"), ("Roast Pork with Vegetables"), ("Moo Shu Beef"), ("Beef with Broccoli"), ("Mongolian Beef"),
("Beef with Green Peppers"), ("Beef with Snow Pea Pods"), ("Kung Pao Beef"), ("Hunan Beef"), ("Chicken with Honey Walnuts"),("Chicken with Cashew Nuts"),
("Sweet and Sour Chicken"), ("Chicken with Vegetables"), ("Moo Shu Chicken"), ("Empress Chicken"), ("Kung Pao Chicken"), ("Crispy Duck"),
("Shrimp with Lobster Sauce"), ("Sweet and Sour Shrimp"), ("Shrimp with Broccoli"), ("Moo Shu Shrimp"), ("Cashew Shrimp"), ("Hunan Shrimp"),
("Kung Pao Shrimp"), ("Jade Scallops"), ("Buddha's Delight"), ("Szechwan String Beans"), ("Bean Curd Home Style"), ("Moo Shu Vegetables"),("Cashew Tofu"),
("Tofu and Portabella Mushroom & Snow Pea Pods"), ("House Special Fried Rice"), ("Fried Rice"), ("Shrimp Fried Rice"), ("House Special Fried Noodles"),
("Fried Noodles"), ("Shrimp Fried Noodles"), ("House Special Chow Fun"), ("Chow Fun"), ("Shrimp Chow Fun"), ("Vegetables Fried Noodles"),
("Vegetables Fried Rice"), ("Vegetables Chow Fun"), ("Noodles with Sesame Paste"), ("Seafood in Bird's Nest"), ("Happy Family"), ("Honey Lemon Chicken"),
("Sesame Chicken"), ("Triple Delight"), ("Orange Beef"), ("General Tso's Chicken"), ("Sesame Beef"), ("Paradise Beef"), ("Shrimp & Chicken with Five Blessings"),
("B.L.T."), ("Ham Sandwich"), ("Billy Club"), ("Italian Sandwich"), ("Roast Beef Sandwich"), ("Country Club"), ("Beach Club"), ("Vegetable Sandwich"),
("Bootlegger Club"), ("Tuna Salad Sandwich"), ("Club Lulu"), ("Ultimate Porker"), ("The J.J. Gargantuan"), ("Small Cheese Pizza"), ("Small Pepperoni Pizza"),
("Medium Cheese Pizza"), ("Medium Pepperoni Pizza"), ("Large Cheese Pizza"), ("Large Pepperoni Pizza"), ("Extra Large Cheese Pizza"),
("Extra Large Pepperoni Pizza"), ("Chicken Wings"), ("Meatball Sandwich"), ("Pizza Sandwich"), ("Chicken Sandwich"), ("Dave's Classic Reuben"),
("Turkey Sandwich"), ("Pad Thai"), ("Crazy Noodle"), ("Pad See You"), ("Seafood Delight"), ("Avocado Curry"), ("Mango Curry"), ("Bi BimBab"), ("Okdol Bi BimBab"),
("Vegetable Tempura"), ("Shrimp Tempura"), ("Chicken Burrito"), ("Steak Burrito"), ("Shredded Chicken Burrito"), ("Shredded Steak Burrito"),
("Pulled Pork Burrito"), ("Mushroom Melt"), ("A Wreck"), ("Chicken Parmesan"), ("Veal Milanese"), ("Fettuccine"), ("Gnocchi"), ("Small T-Bone"),
("Large T-Bone"), ("Lasagna"), ("Eggplant Parmigiano"), ("Chicken Marsala"), ("Veal Marsala"), ("Veal Parmigiano");

INSERT INTO origins ( name ) VALUES ("Asian"), ("Italian"), ("American"), ("Tex-Mex");

INSERT INTO types ( name ) VALUES ("Appetizers"), ("Meat & Seafood"), ("Vegetables"), ("Noodles & Rice"), ("Sandwiches"), ("Pizza"), ("Burrito");

INSERT INTO regions ( name ) VALUES ("Coventry"), ("North Side"), ("Little Italy");

INSERT INTO restaurantorigin ( rID, oID ) VALUES
(1, 1), (2, 3), (3, 3), (4, 3), (5, 1), (6, 1), (7, 4), (8, 4), (9, 3), (10, 3), (11, 2), (12, 2), (13, 2);

INSERT INTO locatedin ( resID, regID ) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 2), (8, 2), (9, 2), (10, 2), (11, 3), (12, 3), (13, 3);

INSERT INTO dishorigin ( dID, oID ) VALUES
(1, 1), (2, 1), (3, 3), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1),
(17, 1), (18, 1), (19, 1), (20, 1), (21, 1), (22, 1), (23, 1), (24, 1), (25, 1), (26, 1), (27, 1), (28, 1), (29, 1), (30, 1), (31, 1),
(32, 1), (33, 1), (34, 1), (35, 1), (36, 1), (37, 1), (38, 1), (39, 1), (40, 1), (41, 1), (42, 1), (43, 1), (44, 1), (45, 1), (46, 1),
(47, 1), (48, 1), (49, 1), (50, 1), (51, 1), (52, 1), (53, 1), (54, 1), (55, 1), (56, 1), (57, 1), (58, 1), (59, 1), (60, 1), (61, 1),
(62, 1), (63, 1), (64, 1), (65, 1), (66, 1), (67, 1), (68, 1), (69, 1), (70, 3), (71, 3), (72, 3), (73, 3), (74, 3), (75, 3), (76, 3),
(77, 3), (78, 3), (79, 3), (80, 3), (81, 3), (82, 3), (83, 2), (84, 2), (85, 2), (86, 2), (87, 2), (88, 2), (89, 2), (90, 2), (91, 3),
(92, 3), (93, 3), (94, 3), (95, 3), (96, 3), (97, 1), (98, 1), (99, 1), (100, 1), (101, 1), (102, 1), (103, 1), (104, 1), (105, 1),
(106, 1), (107, 4), (108, 4), (109, 4), (110, 4), (111, 4), (112, 3), (113, 3), (114, 2), (115, 2), (116, 2), (117, 2), (118, 3),
(119, 3), (120, 2), (121, 2), (122, 2), (123, 2), (124, 2);

INSERT INTO dishtype (dID, tID) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 2), (16, 2),
(17, 2), (18, 2), (19, 2), (20, 2), (21, 2), (22, 2), (23, 2), (24, 2), (25, 2), (26, 2), (27, 2), (28, 2), (29, 2), (30, 2), (31, 2),
(32, 2), (33, 2), (34, 2), (35, 2), (36, 2), (37, 2), (38, 2), (39, 2), (40, 3), (41, 3), (42, 3), (43, 3), (44, 3), (45, 3), (46, 3),
(47, 4), (48, 4), (49, 4), (50, 4), (51, 4), (52, 4), (53, 4), (54, 4), (55, 4), (56, 4), (57, 4), (58, 4), (59, 4), (60, 2), (61, 2),
(62, 2), (63, 2), (64, 2), (65, 2), (66, 2), (67, 2), (68, 2), (69, 2), (70, 5), (71, 5), (72, 5), (73, 5), (74, 5), (75, 5), (76, 5),
(77, 5), (78, 5), (79, 5), (80, 5), (81, 5), (82, 5), (83, 6), (84, 6), (85, 6), (86, 6), (87, 6), (88, 6), (89, 6), (90, 6), (91, 2),
(92, 5), (93, 5), (94, 5), (95, 5), (96, 5), (97, 4), (98, 4), (99, 4), (100, 2), (101, 2), (102, 2), (103, 4), (104, 4), (105, 3),
(106, 2), (107, 7), (108, 7), (109, 7), (110, 7), (111, 7), (112, 5), (113, 5), (114, 2), (115, 2), (116, 4), (117, 4), (118, 2),
(119, 2), (120, 4), (121, 3), (122, 2), (123, 2), (124, 2);

INSERT INTO serves ( rID, dID, price, description ) VALUES
(1, 1, 1.95, ""), (1, 2, 1.65, ""), (1, 3, 6.95, ""), (1, 4, 5.95, ""), (1, 5, 6.25, ""), (1, 6, 2.50, ""), (1, 7, 5.95, ""), (1, 8, 5.50, ""), (1, 9, 7.95, ""), (1, 10, 6.95, ""), (1, 11, 2.25, ""), (1, 12, 1.75, ""), (1, 13, 6.95, ""), (1, 14, 6.25, ""), (1, 15, 10.95, ""), (1, 16, 10.95, ""),
(1, 17, 12.95, ""), (1, 18, 12.95, ""), (1, 19, 12.95, ""), (1, 20, 12.95, ""), (1, 21, 12.95, ""), (1, 22, 12.95, ""), (1, 23, 12.95, ""), (1, 24, 11.95, ""), (1, 25, 11.95, ""), (1, 26, 11.95, ""), (1, 27, 11.95, ""), (1, 28, 11.95, ""), (1, 29, 11.95, ""), (1, 30, 11.95, ""), (1, 31, 13.95, ""),
(1, 32, 14.95, ""), (1, 33, 14.95, ""), (1, 34, 14.95, ""), (1, 35, 14.95, ""), (1, 36, 14.95, ""), (1, 37, 14.95, ""), (1, 38, 14.95, ""), (1, 39, 15.95, ""), (1, 40, 8.95, ""), (1, 41, 8.95, ""), (1, 42, 8.95, ""), (1, 43, 8.95, ""), (1, 44, 8.95, ""), (1, 45, 9.50, ""), (1, 46, 9.50, ""),
(1, 47, 9.95, ""), (1, 48, 8.95, ""), (1, 49, 10.95, ""), (1, 50, 10.95, ""), (1, 51, 9.50, ""), (1, 52, 10.95, ""), (1, 53, 10.95, ""), (1, 54, 9.50, ""), (1, 55, 10.95, ""), (1, 56, 8.95, ""), (1, 57, 7.95, ""), (1, 58, 8.95, ""), (1, 59, 5.95, ""), (1, 60, 15.95, ""), (1, 61, 13.95, ""),
(1, 62, 12.95, ""), (1, 63, 12.95), (1, 64, 15.95, ""), (1, 65, 15.95, ""), (1, 66, 12.95, ""), (1, 67, 15.95, ""), (1, 68, 15.95, ""), (1, 69, 13.95, ""), (2, 70, 6.00, "J.J.B.L.T."), (2, 71, 7.00, "Smoked Ham Club"), (2, 72, 7.00, "Roast beef and ham"), (2, 73, 7.00, "Italian Night Club"), (2, 74, 7.00, "Hunter's Club"), (2, 75, 7.00, "Turkey breast and ham"), (2, 76, 7.00, "Turkey breast with avocados"),
(2, 77, 7.00, "Gourmet Veggie Club"), (2, 78, 7.00, "Roast beef and turkey breast"), (2, 79, 7.00, "Club Tuna"), (2, 80, 7.00, "Turkey breast and bacon"), (2, 81, 7.00, "Ham and Bacon"), (2, 82, 8.00, "Salami, ham, capicola, roast beef, and turkey"), (3, 83, 6.99, "10in"), (3, 84, 7.99, "10in"), (3, 85, 9.99, "12in"), (3, 86, 11.24, "12in"), (3, 87, 11.99, "14in"), (3, 88, 12.39, "14in"), (3, 89, 14.99, "20in, Big Guy"), (3, 90, 16.99, "20in, Big Guy"), (3, 91, 4.99, "6pc"),
(4, 92, 6.99, "Dave's Best Meatball Ever"), (4, 93, 4.59, "Dave's Pizza Sub"), (4, 94, 5.99, "The Incredible Dave's"), (4, 95, 8.10, "Corned Beef, sauerkraut, swiss cheese, 1000 island dressing"), (4, 96, 5.99, "The Turkey Dave"), (4, 70, 6.99, "Dave's Tasty Bacon"), (4, 74, 5.99, "Dave's All American"), (4, 77, 5.99, "Dave's Veg-Out"), (4, 79, 9.95, ""), (5, 97), (5, 98), (5, 99), (5, 100), (5, 101),
(5, 102), (5, 26), (5, 25), (5, 18), (6, 103), (6, 96), (6, 104), (6, 105), (6, 106), (6, 96), (6, 97), (6, 98), (6, 99),
(6, 90), (6, 1), (6, 2), (6, 6), (6, 47), (7, 107), (7, 108), (7, 109), (7, 110), (8, 111), (8, 107), (8, 108), (8, 110), (9, 85), (9, 86), 
(9, 87), (9, 88), (9, 89), (9, 90), (9, 91), (10, 112), (10, 113), (10, 94), (10, 93), (10, 79), (10, 71), (10, 71), (10, 73), (10, 92), 
(11, 114), (11, 115), (11, 116), (11, 117), (12, 118), (12, 119), (12, 114), (12, 116), (12, 92), (12, 83), (12, 84), (12, 85), (12, 86),
(12, 87), (12, 88), (13, 120), (13, 121), (13, 122), (13, 123), (13, 124), (13, 114), (13, 116), (13, 117);