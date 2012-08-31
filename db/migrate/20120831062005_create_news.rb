class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :image
      t.string :headline
      t.string :detail

      t.timestamps
    end
  end
end
