class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :city
      t.string :attendence
      t.string :followup_ownedby
      t.string :followup_status
      t.string :comments
      t.string :name
      t.string :company
      t.string :role
      t.string :emailaddress
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
