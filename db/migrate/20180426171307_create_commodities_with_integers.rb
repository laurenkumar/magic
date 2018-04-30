class CreateCommoditiesWithIntegers < ActiveRecord::Migration[5.1]
  def change
    create_table :commodities_with_integers do |t|
      t.string :name
      t.integer :maxvalue

      t.timestamps
    end
  end
end
