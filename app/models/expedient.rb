class Expedient < ActiveRecord::Base
  has_many :gremios
  has_many :perjudicados
end
