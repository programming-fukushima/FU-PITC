class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :family
      t.string :first
      t.string :affiliation
      t.date :birthday
      t.integer :sex, null: false, default: 1

      t.timestamps
    end
  end
end
