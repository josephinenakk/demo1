class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :sample_title

      t.timestamps
    end
  end
end
