class Page < ActiveRecord::Base
  belongs_to :section
  belongs_to :page
  has_many   :pages

  scope :without_parent, :conditions => "parent_id is null" 
  scope :by_parent, lambda { |parent_id| {:conditions => ["parent_id = ?", parent_id]}}

end
