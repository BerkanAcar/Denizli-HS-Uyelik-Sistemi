class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.boolean :status

      t.timestamps null: false
    end
  end
end
