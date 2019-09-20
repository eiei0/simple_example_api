class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first
      t.string :last
      t.integer :age

      t.timestamps
    end
  end
end
