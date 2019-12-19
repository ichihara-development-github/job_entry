module JobsHelper
    
    def choice(search_factor)
        jobs = Job.all.pluck(search_factor)
        jobs.uniq
    end

    
end
