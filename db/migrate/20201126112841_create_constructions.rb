class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.string  :name,           null: false
      t.string  :place
      t.bigint :price
      t.references :user,        foreign_key: true
      t.string  :schedule
      t.string  :doing,           null: false
      t.timestamps
    end
  end
end
