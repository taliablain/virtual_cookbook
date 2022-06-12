create database VirtualCookbook;

use VirtualCookbook;
create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name varchar(25), description varchar(50), instructions varchar(10000)) Engine=InnoDB default charset=utf8;

create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name varchar(50)) engine=InnoDB DEFAULT charset=utf8;

create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name varchar(30)) engine=InnoDB DEFAULT charset=utf8;

create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL, measure_id INT, amount INT,
CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id),
CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id),
CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id))
		ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Measure (name) VALUES('cup'), ('teaspoon'), ('one'), ('two'), ('three'), ('tablespoon');
INSERT INTO Ingredient (name) VALUES('peppers'), ('onions'), ('noodles'), ('rice'), ('tofu'), ('broccoli'), ('marinade');
INSERT INTO Recipe (name, description, instructions) VALUES('Stir Fry', 'sexy', 'marinate tofu + put it all in a pan');
/*peppers*/
INSERT INTO RecipeIngredient(recipe_id, ingredient_id, measure_id) values (1, 1, 4); 
/*onions*/
INSERT INTO RecipeIngredient(recipe_id, ingredient_id, measure_id) values (1, 2, 4);
/*noodles*/
INSERT INTO RecipeIngredient(recipe_id, ingredient_id, measure_id) values (1, 3, 3);
/*rice*/
INSERT INTO RecipeIngredient(recipe_id, ingredient_id, measure_id) values (1, 4, 3);
/*tofu*/
INSERT INTO RecipeIngredient(recipe_id, ingredient_id, measure_id) values (1, 5, 4);
/*broccoli*/
INSERT INTO RecipeIngredient(recipe_id, ingredient_id, measure_id) values (1, 6, 3);
/*marinade*/
INSERT INTO RecipeIngredient(recipe_id, ingredient_id, measure_id) values (1, 7, 3);

/*ran up to here*/