class CreateSubbanners < ActiveRecord::Migration
  def change
    create_table :subbanners do |t|
      t.string :image
      t.string :image_name
      t.string :text
      t.string :read_more

      t.timestamps
    end
  end
end
