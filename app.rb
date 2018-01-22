#Finds common point between two points using may1ices

=begin
    {x1     y1  |  c1 }
    {x2     y2  |  c2 }
=end

execution = Thread.new {
    print "x1: "
    x1 = gets.to_f
    print "y1: "
    y1 = gets.to_f

    print "constant 1: "
    c1 = gets.to_f

    print "x2: "
    x2 = gets.to_f
    print "y2: "
    y2 = gets.to_f

    print "constant 2: "
    c2 = gets.to_f

    i = 0

    while y1 != 0 and x2 != 0
        x2 = (x1 * x2) - (x2 * x1);
        y2 = (y1 * x2) - (y2 * x1);
        c2 = (c1 * x2) - (c2 * x1);
        
        y1 = (y1 * y2) - (y2 * y1);
        x1 = (x1 * y2) - (x2 * y1);
        c1 = (c1 * y2) - (c2 * y1);

        puts
        puts "calculating"
        puts

        i+=1

        if i == 2 then 
            raise "Same slopes share no common points"
        end
    end

    puts "{#{x1}     #{y1}  |  #{c1} }"
    puts "{#{x2}     #{y2}  |  #{c2} }"
    puts

    puts "X coordinate: #{(c1/x1).to_f}"
    puts "Y coordinate: #{(c2/y2).to_f}"
}

begin
    execution.join
rescue => exception
    puts "#{exception}"
end
