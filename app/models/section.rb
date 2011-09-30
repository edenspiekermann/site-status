class Section < ActiveRecord::Base
  belongs_to :site
  has_many :pages
  #accepts_nested_attributes_for :pages
end
