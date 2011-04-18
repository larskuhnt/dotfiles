require 'irb/completion'
require 'irb/ext/save-history'
require 'rubygems'
require 'wirble'

IRB.conf[:AUTO_INDENT]=true

railsrc_path = File.expand_path('~/.railsrc')
if ( ENV['RAILS_ENV'] || defined? Rails ) && File.exist?( railsrc_path )
  begin
    load railsrc_path
  rescue Exception
    warn "Could not load: #{ railsrc_path }" # because of $!.message
  end
end

Wirble.init
Wirble.colorize

colors = Wirble::Colorize.colors.merge({
 :object_class => :purple,
 :symbol => :purple,
 :symbol_prefix => :purple
})
Wirble::Colorize.colors = colors