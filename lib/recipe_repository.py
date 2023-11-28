from lib.recipe import Recipe

class RecipeRepository:

    # We initialise with a database connection
    def __init__(self, connection):
        self._connection = connection

    # Retrieve all recipes
    def all(self):
        rows = self._connection.execute('SELECT * FROM recipes')
        recipes = []
        for row in rows:
            item = Recipe(row["id"], row["name"], row["cooking_time"], row["rating"])
            recipes.append(item)
        return recipes

    # Find a single recipe by their id
    def find(self, id):
        rows = self._connection.execute(
            'SELECT * FROM recipes WHERE id = %s', [id])
        row = rows[0]
        return Recipe(row["id"], row["name"], row["cooking_time"], row["rating"])

    # # Create a new recipe
    # # Do you want to get its id back? Look into RETURNING id;
    # def create(self, recipe):
    #     self._connection.execute('INSERT INTO recipes (name, genre) VALUES (%s, %s)', [
    #                              recipe.name, recipe.genre])
    #     return None

    # # Delete an recipe by their id
    # def delete(self, recipe_id):
    #     self._connection.execute(
    #         'DELETE FROM recipes WHERE id = %s', [recipe_id])
    #     return None
