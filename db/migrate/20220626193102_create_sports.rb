class CreateSports < ActiveRecord::Migration[7.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.integer :kind
      t.integer :team_size
      t.integer :team_total_size

      t.timestamps
    end
  end
end
