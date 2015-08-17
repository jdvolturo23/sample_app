class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.varchar :name
      t.varchar :email
      t.varchar :token
      t.varchar :uid

      t.timestamps null: false
    end
  end
end