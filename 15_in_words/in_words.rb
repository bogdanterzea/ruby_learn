class Fixnum
    def  in_words
        numarut = ""
        words_hash = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen", 17=>"seventeen", 18=>"eighteen",19=>"nineteen",20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}
        scale = {3=>"hundred",4 =>"thousand",6=>"million",9=>"billion"}

          if words_hash.has_key?self
            words_hash[self]
          else
            ns = self.to_s.split(//)
              while ns.size > 0
                if ns.size == 2
                    puts "astaaaaaaaaaaaaaaa--------", ns.join
                    puts words_hash.has_key?ns.join
                    if words_hash.has_key?ns.join.to_i and ns.join.to_i!=0 and ns.join!=00
                        puts " HASSE:FFFFFFFFFFFFFFF"
                        numarut << " " << words_hash[ns.join.to_i]
                    elsif (ns.join.to_i)%10 != 0
                        puts ns.size , "11111111111111111SIZEEEEEEEEEEE"
                        numarut << " " if numarut != ""
                        numarut << words_hash[(ns.join.to_i) - (ns.join.to_i)%10]
                        numarut << " "
                        numarut << words_hash[(ns.join.to_i)%10]
                    end
                    puts numarut, "ASTA E numarut"
                    return numarut`
                    ns.shift
                end
                if ns.size > 4
                  numarut << (words_hash[(ns[0,2].join.to_i) - (ns[0,2].join.to_i) % 10])
                else
                  numarut << (words_hash[ns[0].to_i]) << " "
                end
                numarut << (scale[ns.size])
                puts numarut
                puts ns
                ns.shift
                puts ns

              end
            end
    end
    #     if words_hash.has_key?(self)
    #         words_hash[self]
    #     else if
    #
    #     end
    # end
end
