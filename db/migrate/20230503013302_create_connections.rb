class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.time :time
      t.date :date
      t.integer :friend_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
