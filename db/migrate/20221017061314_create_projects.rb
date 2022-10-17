class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :p_name
      t.string :p_description
      t.timestamps
    end
  end
end
