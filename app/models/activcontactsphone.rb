class Activcontactsphone < ActiveRecord::Base
belongs_to :user
attr_reader :status
attr_accessor :status
end
