class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :t_name
      t.string :t_discription
      t.integer :status
      t.belongs_to :project
      t.timestamps
    end
  end
end
