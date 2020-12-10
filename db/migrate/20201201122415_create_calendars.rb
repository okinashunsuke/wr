class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.references :construction
      t.references :user
      t.string :const_type
      t.string :company
      t.integer :n_o_p
      t.datetime :start_time
      t.date :day
      t.timestamps
    end
  end
end
