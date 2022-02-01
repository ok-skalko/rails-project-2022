class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.belongs_to :shop, index: true, foreign_key: true
      t.string     :title
      t.float      :price
      t.string     :image_url

      t.timestamps
    end
  end
end
