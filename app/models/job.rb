class Job < ApplicationRecord
    
    has_many :entries, dependent: :destroy
    has_many :users, through: :entries
    
    def self.free_search(free_search)
        if free_search
            #検索ワードがあるかどうか
            Job.where("name LIKE ? OR content LIKE ?", "%#{free_search}%", "%#{free_search}%")
            #検索結果がなければblank
        else
            #なければオールをreturn
            all
        end
    end
    
    def self.search(sp)
       if sp
           sp.reject! { |key, value| value.empty?}
           @result = Job.where("#{sp.keys.first}": "#{sp.values.first}")
           sp.each do |key, value|
               @result = @result.where("#{key}": "#{value}")
               
           end
           return @result
          
            # Job.where(area: "#{sp[:area]}").where(clothes: "#{sp[:clothes]}").where(
            #     date: "#{sp[:date]}").where(kind: "#{sp[:kind]}").where(start: "#{sp[:start]}").where(reward: "#{sp[:min]}".."#{sp[:max]}")
       end
    
    end
end
