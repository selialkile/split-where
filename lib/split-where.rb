# -*- encoding : utf-8 -*-

# Original class of String...
class String
  # The new split
  # @param [Hash{:value=>String, :outside=>String}] :value for split, :outside is a condition to split
  #@note exemple: "value:'xx',value:'yy,',lslslsl{},ddddddd'dg,'g"
  #@note exemple: "a,b,c"
  #                0123456789012345678901234
  def split_where(args)
    list = []
    init = 0
    pointer = 0
    count = 0
    enable = true
    while pointer <= self.length
      #condition
      puts "c #{count} p #{pointer} i #{init} e #{enable}"
      if args[:outside] == self[pointer] and enable == true
        enable = false
      else
        enable = true
      end

      if (self[pointer] == args[:value] || self[pointer].nil?) && enable == true
        list << self[init,count]
        init = pointer + 1
        count = -1
      end
      count += 1
      pointer += 1
    end
    list
  end
end