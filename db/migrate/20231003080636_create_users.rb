class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.date   :birthday
      t.text   :address
      t.timestamps
    end
  end
end
