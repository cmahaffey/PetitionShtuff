class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
