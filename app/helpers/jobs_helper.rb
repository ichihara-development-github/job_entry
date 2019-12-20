module JobsHelper
    
    def choice(search_factor)
        jobs = Job.all.pluck(search_factor)
        jobs.uniq
    end
    
        def prefecture
           ["千葉","東京23区","東京23区外","埼玉","神奈川","群馬","栃木"]
        end
        
        def time
            time = []
            (0..23).each do |h|
                 (00..45).step(15){ |m|  time << "#{h}"+":"+"#{sprintf("%02d",m)}"}
             end
             time
        end       
                

    
end
