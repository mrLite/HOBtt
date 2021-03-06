class CreateTorrentFiles < ActiveRecord::Migration
  def change
    create_table :torrent_files do |t|
      t.string :name
      t.integer :size, :limit => 8
      t.string :filename
      t.integer :files_count

      t.timestamps
    end
  end
end
