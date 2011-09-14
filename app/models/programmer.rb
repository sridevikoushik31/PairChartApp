class Programmer < ActiveRecord::Base

  has_many :pairs_withs, :foreign_key => "programmer_id", :class_name => "PairsWith" , :dependent => :destroy
  has_many :pairs, :through => "pairs_withs"
  validates_presence_of :name


   def name
      attributes['name']
    end



  def self.get_all_programmers
     Programmer.all.collect{|programmer|programmer.name}
   end


end
