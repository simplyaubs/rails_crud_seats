class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :name
      t.string :location
    end
  end
end
