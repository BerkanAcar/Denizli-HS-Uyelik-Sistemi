class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :user_id
      t.string :card_id
      t.references :user, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
