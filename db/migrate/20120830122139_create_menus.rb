class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :controller
      t.string :action

      t.timestamps
    end
  end
end
