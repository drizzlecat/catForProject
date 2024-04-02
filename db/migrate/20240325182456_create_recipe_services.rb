class CreateRecipeServices < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_services do |t|

      t.timestamps
    end
  end
end
