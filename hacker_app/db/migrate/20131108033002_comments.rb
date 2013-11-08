class Comments < ActiveRecord::Migration
  def change
  	create_table "comments", :force => true do |t|
  	t.integer  "story_id"                                                                                
    t.integer  "user_id"                                                                                
    t.integer  "parent_comment_id"
    t.integer  "thread_id"
    t.text     "comment"           
    t.integer  "upvotes"                                           
    t.integer  "downvotes"
  	end
  end
end
