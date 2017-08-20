class CreateDateInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :date_inputs do |t|
      t.timestamp :date
      t.timestamps
    end
  end
end
