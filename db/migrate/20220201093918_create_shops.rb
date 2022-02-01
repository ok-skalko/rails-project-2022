class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.belongs_to :user, foreign_key: true, index: { unique: true }
      t.string     :country_code
      t.string     :name
      t.integer    :status

      t.timestamps
    end
  end
end
