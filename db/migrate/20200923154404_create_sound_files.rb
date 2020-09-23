class CreateSoundFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :sound_files do |t|
      t.string :key
      t.string :text

      t.timestamps
    end
  end
end
