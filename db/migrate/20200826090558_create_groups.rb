class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :employees_id, :string, default: [], array:true

      t.timestamps
    end
  end
end
