class CreateInjuries < ActiveRecord::Migration
  def change
    create_table :injuries do |t|
      t.string :name
      t.text :description
      t.integer :cost

      t.timestamps
    end
  end
end
