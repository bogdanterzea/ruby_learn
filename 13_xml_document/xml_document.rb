# frozen_string_literal: true

# class XmlDocument
#
#     attr_accessor :end
#     def hello(data = nil, &block, &proc)
#         if data.is_a? (Hash)
#             statement = ''
#             data.map{|key, value| statement = "<hello #{key}='#{value}'/>" }
#             @final = statement
#         elsif block_given?
#             @final = "<hello>#{yield}</hello>"
#         elsif proc_given?
#             @final = "<hello/>"
#         end
#     end
#     def send(tag_name)
#         # tag_name = (1..8).map{|i| ('a'..'z').to_a[rand(26)]}.join asa arata random tagu
#         @final = "<#{tag_name}/>"
#     end
#
# end

class XmlDocument
  def initialize(indent = false)
    @indent = indent
    @indent_level = 0
  end

  def method_missing(method_name, *args, &block)
    xml = ''
    attributes = args[0] || {}
    xml << ('  ' * @indent_level) if @indent
    xml << "<#{method_name}"
    attributes.each_pair { |key, value| xml << " #{key}=\'#{value}\'" }

    if block
      xml << '>'
      @indent_level += 1
      xml << "\n" if @indent
      xml << yield
      @indent_level -= 1
      xml << ('  ' * @indent_level) if @indent
      xml << "</#{method_name}>"
      xml << "\n" if @indent
    else
      xml << '/>'
      xml << "\n" if @indent
    end
    xml
  end
end
