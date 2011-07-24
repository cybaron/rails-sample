class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.boolean :done, :null => false, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
