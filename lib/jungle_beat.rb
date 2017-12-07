require "./lib/linked_list"

class JungleBeat
	attr_reader :list

  def initialize
	  @list = LinkedList.new

  end

	def append(node_data)
		one_node_data = node_data.split(' ')
		one_node_data.each do |node_data|
      @list.append(node_data)
		end
		node_data
	end
	

end
