class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name,null:false
      t.text :description,null:false
      t.belongs_to :user,null:false,foreign_key:true
      t.timestamps null:false
    end
    # can't have two recipes with the samae name for the same user
    add_index:recipes,[:user_id,:name]
  end
end
