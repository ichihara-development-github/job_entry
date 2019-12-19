class Job < ApplicationRecord
    
    has_many :entries, dependent: :destroy
    has_many :users, through: :entries
    
    def self.free_search(free_search)
        if free_search
            Job.where("name LIKE ? OR content LIKE ?", "%#{free_search}%", "%#{free_search}%")
        else
            all
        end
    end
    
    def self.search(sp)
       if sp
            Job.where(area: "#{sp[:area]}").where(clothes: "#{sp[:clothes]}").where(kind: "#{sp[:kind]}").where(start: "#{sp[:start]}").where(
            reward: "#{sp[:min]}".."#{sp[:max]}")
       else
            all
       end
    end
end
