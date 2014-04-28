class Message < ActiveRecord::Base

  validates_presence_of :subject, :notice => "Please enter message title"

  belongs_to :conversation

  def self.readingmessage(id, reader)
    message = find(id, :conditions => ["sender_id = ? OR recipient_id = ?", reader, reader])
    if message.read_at.nil? && (message.recipient.user_id==reader)
      message.read_at = Time.now
      message.save!
    end
    message
  end

  def read?
    self.read_at.nil? ? false : true
  end

end