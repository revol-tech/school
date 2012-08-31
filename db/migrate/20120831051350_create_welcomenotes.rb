class CreateWelcomenotes < ActiveRecord::Migration
  def change
    create_table :welcomenotes do |t|
      t.string :image
      t.string :text

      t.timestamps
    end
  end
end
