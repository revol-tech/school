class CreateFlashnews < ActiveRecord::Migration
  def change
    create_table :flashnews do |t|
      t.string :text

      t.timestamps
    end
  end
end
