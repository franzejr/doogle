class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
    	t.string :name
    	t.belongs_to :word
      t.timestamps null: false
    end
  end
end