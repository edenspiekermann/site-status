class Page < ActiveRecord::Base
  belongs_to :section
  belongs_to :page
  has_many   :pages

  scope :without_parent, :conditions => "parent_id is null" 
  scope :by_parent, lambda { |parent_id| {:conditions => ["parent_id = ?", parent_id]}}

  def get_possible_parents()
    possible = []
    unless section.pages.empty?
      possible = section.pages.map do |p| 
        if !p.nil? and p.id != id 
          then [p.name, p.id] 
        end
      end 
      possible.sort_by! do |e|
        if e.is_a? Array
          e[0]
        else
          " "
        end
      end
    end
    possible
  end

end
