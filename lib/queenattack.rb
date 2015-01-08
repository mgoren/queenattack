class Array
  define_method(:queen_attack?) do |target|

    xdiff = target.at(0).-(self.at(0))
    ydiff = target.at(1).-(self.at(1))
    xdiff_absolute = xdiff.abs
    ydiff_absolute = ydiff.abs

    #puts(xdiff_absolute)
    #puts(ydiff_absolute)

    if self.at(0).eql?(target.at(0)) #vertical
      #puts("vertical true")
      true
    elsif self.at(1).eql?(target.at(1)) #horizontal
      #puts("horizontal true")
      true
    elsif xdiff_absolute.eql?(ydiff_absolute) #diagonal
      #puts("diagonal true")
      true
    else
      false
    end
  end
end

#[1,5].queen_attack?([4, 2])
