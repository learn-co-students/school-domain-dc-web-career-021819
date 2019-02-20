# code here!

class School
    def initialize (name)
        @name = name
        @roster = {}
    end

    attr_accessor :roster, :name
    def add_student (name, grade)
        if (@roster.has_key?(grade))
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(g)
        return @roster[g]
    end
    def sort
        sorted_hash = {}
        nums = @roster.sort do |low, high|
            low <=> high
        end
        nums = nums.each do |e|
            e[1] = e[1].sort do |low, high|
                low[0] <=> high[0]
            end
        end
        nums.each do |e|
            sorted_hash[e[0]] = e[1]
        end
        sorted_hash
    end
end