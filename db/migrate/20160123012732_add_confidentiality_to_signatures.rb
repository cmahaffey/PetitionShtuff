class AddConfidentialityToSignatures < ActiveRecord::Migration
  def change
    add_column :signatures, :confidentiality, :boolean
  end
end
