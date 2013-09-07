class CreateStatusUsers < ActiveRecord::Migration
  def change
    create_table :status_users do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
