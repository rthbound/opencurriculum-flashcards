class Persistence::Card < ActiveRecord::Base
  attr_accessible :name, :front_content, :back_content, :deck_id

  validates_presence_of :name, :front_content, :back_content, :deck_id

  belongs_to :deck

  def to_s
    name
  end
end
