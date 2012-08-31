class Peer < ActiveRecord::Base
  attr_accessible :ip, :peer_id, :port, :uploaded, :downloaded, :leftt, :last_action_at
  
  belongs_to :torrent
  
  def self.destroy_inactive
    destroy_all("last_action_at < '#{15.minutes.ago.to_formatted_s(:db)}'")
  end
end
