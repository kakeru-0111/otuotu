class CreateMakuras < ActiveRecord::Migration[6.1]
  def change
    create_table :makuras do |t|
      t.text :name
      t.text :body

      t.timestamps
    end
  end
end
