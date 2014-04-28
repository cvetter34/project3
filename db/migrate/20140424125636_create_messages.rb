class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to  :conversation
      t.integer     :sender_id
      t.string      :subject
      t.text        :body
      t.datetime    :read_at

      t.timestamps
    end
  end
end
