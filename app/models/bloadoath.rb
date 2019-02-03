class BloodOath
    @@all = []
    attr_accessor :initiation_date, :cult, :follower

    def initialize(initiation_date, cult, follower)
        @initiation_date = initiation_date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.first_oath
        BloodOath.all[0].follower
    end
    
    def self.all
        @@all
    end
end