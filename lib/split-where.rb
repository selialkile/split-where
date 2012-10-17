# -*- encoding : utf-8 -*-

# Original class of String...
class String

  # The new split_where make split of strings using conditions to determine 
  # where he can cut or not the string
  # @param [Hash{:value=>String, :outside=>String}] :value for split, :outside is a condition to split
  #@note exemple: "'xx','yy,',l{},'dg,'g"
  #@note exemple: "a,b,c"
  #                0123456789012345678901234
  def split_where(args)
    list = []
    enable = true
    s = ""
    count = 0
    while(self[count])
      c = self[count]
      if args[:outside] == c 
        enable = enable ? false : true
      end
      
      if c == args[:value] && enable == true
        list << s
        s=""
      else
        s += c
      end
      count += 1
    end
    list << s if s
    list
  end

end