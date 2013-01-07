class Car < ActiveRecord::Base
   belongs_to :user
   validates :brand, :presence => true
   validates :carmodel, :presence => true
   validates :year, :presence => true
   validates :cc, :presence => true
   validates :km, :presence => true
   validates :price, :presence => true


   has_attached_file :pic, :styles => 
           { :medium => "300x300>", :thumb => "100x100>" }



def self.pagesearch(page, order)
  paginate :per_page => 5, :page => page,
           :order => order
end


end
