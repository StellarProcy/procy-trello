class CreateColumns < ActiveRecord::Migration[6.0]
  def change
    create_table :columns do |t|
      t.string :title
      t.integer :dashboard_id
      t.string :position
      t.string :integer

      t.timestamps
    end
  end
end
