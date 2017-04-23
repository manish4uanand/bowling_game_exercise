class CreateBowlings < ActiveRecord::Migration
  def change
    create_table :bowlings do |t|

      t.timestamps null: false
    end
  end
end
