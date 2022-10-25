class Role < ActiveRecord::Base
    has_many :auditions


    def actors
        nArray = []
        self.auditions.each do |a|
            nArray << a.actor
        end
        nArray
    end

    def locations
        nArray = []
        self.auditions.each do |a|
            nArray << a.location
        end
        nArray
    end

    def understudy
        if self.auditions.include?(self.auditions.second)
            self.auditions.second
        else
            "no actor hass been hired for understudy for this role"
        end
    end
end