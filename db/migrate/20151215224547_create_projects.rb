class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.name
      t.timestamps
    end
  end
end
