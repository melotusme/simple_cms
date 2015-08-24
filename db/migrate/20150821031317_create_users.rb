class CreateUsers < ActiveRecord::Migration

  def up
    create_table :users do |t|
      t.column 'first_name', :string, limit: 20, default:"wrong"
      t.string 'last_name', limit: 50
      t.string 'email', default: "", null: false
      t.string 'password', limit: 50
      t.timestamps # t.datetime 'created_at' t.datetime 'updated_at'
    end
  end

  def down
    drop_table :users
  end

end
