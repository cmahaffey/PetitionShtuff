class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :name
      t.boolean :confidentiality
      t.timestamps null: false
    end
  end
end
