require 'pry'
# Add your code here
class Dog
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
        #binding.pry
    end

    def self.all
        #binding.pry
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each do |dog|
            puts dog.name
        end
    end

    def save
        @@all << self
    end
        
end