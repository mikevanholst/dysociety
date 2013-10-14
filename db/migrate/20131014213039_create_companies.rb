class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :web_address
      t.text :description
      t.belongs_to :category

      t.timestamps
    end
  end
end
