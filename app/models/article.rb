class Article < ActiveRecord::Base
    validates :title, presence: true, length: { minimun: 3, maximun: 20}
    validates :description, presence: true, length: { minimun: 3, maximun: 50} 
end
