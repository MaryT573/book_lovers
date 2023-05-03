class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :summary
      t.string :author
      t.string :publish_date

      t.timestamps
    end
  end
end
