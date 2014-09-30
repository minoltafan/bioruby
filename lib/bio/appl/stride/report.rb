# 
# = bio/appl/stride/report.rb - STRIDE report classes
# 
# Copyright:: minoltafan <waterincan@gmail.com>
# 
# License::	The ruby License
# 
# $Id:$
# 
# == Description
# 
# 
# == Example
# 
# == References
# 

module Bio
  class Stride
    class Report
      attr_reader :tot_surf_area
 
      def initialize(str)
        @tot_surf_area = 0
        parse_report(str)
      end
 
      def parse_report(str)
        str.split("\n").each do |line|
          case line
          when /^ASG/
            asg = line.split(/\s+/)
            @tot_surf_area += asg[9].to_f
          end
        end
        @tot_surf_area = nil if @tot_surf_area == 0
      end
      private :parse_report
 
    end
  end
end
# # # # 
# # # # module Bio
# # # #   class Stride
# # # #     class Report
# # # #       attr_reader :tot_surf_area
# # # #       
# # # #       def initialize(str)
# # # # 	@tot_surf_area = 0
# # # # 	parse_report(str)
# # # #       end
# # # #       
# # # #       def parse_report(str)
# # # # 	str.split("n").each do |line|
# # # # 	  case line
# # # # 	  when /^ASG/
# # # # 	    asg = line.split(/\s+/)
# # # # 	    @tot_surf_area += asg[9].to_f
# # # # 	  end
# # # # 	end
# # # # 	@tot_surf_area = nil if @tot_surf_area == 0
# # # #       end
# # # #       private :parse_report
# # # #       
# # # #     end
# # # #   end
# # # # end
