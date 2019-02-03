class BloodOath
    @@all = []
    attr_accessor :initiation_date, :cult, :follower

    def initialize(initiation_date)
        @initiation_date = initiation_date
        @@all << self
    end
    
    def self.all
        @@all
    end
end