require 'pp'
IRB.conf[:AUTO_INDENT]=true

if defined?(Rails)
  puts 'hello from irbrc'
  ActiveRecord::Base.logger = ActiveResource::Base.logger = Logger.new(STDOUT)
  
  def sql(query)
    ActiveRecord::Base.connection.execute(query).each do |result|
      result.keys.sort.each do |key|
        p "#{key.to_s.ljust(30)}#{result[key].to_s}"
      end
      p "====== "
    end
  end
  
end

