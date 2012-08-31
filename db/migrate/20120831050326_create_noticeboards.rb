class CreateNoticeboards < ActiveRecord::Migration
  def change
    create_table :noticeboards do |t|
      t.string :image
      t.string :text

      t.timestamps
    end
  end
end
