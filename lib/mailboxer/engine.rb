# Database foreign keys
# require 'foreigner' # removed because of conflict with schema_plus
require 'carrierwave'
begin
  require 'sunspot_rails'
rescue LoadError
end

module Mailboxer
  class Engine < Rails::Engine
    initializer "mailboxer.models.messageable" do
      ActiveSupport.on_load(:active_record) do
        extend Mailboxer::Models::Messageable::ActiveRecordExtension
      end
    end
  end
end
