require 'mimemagic'
require 'multi_json'
require 'securerandom'
require 'openssl'
require 'tempfile'
require 'set'
require 'iruby/version'
require 'iruby/kernel'
require 'iruby/backend'
require 'iruby/ostream'
require 'iruby/formatter'
require 'iruby/utils'
require 'iruby/display'
require 'iruby/comm'

begin
  require 'iruby/session/rbczmq'
rescue LoadeError => e
  begin
    require 'iruby/session/ffi_rzmq'
  rescue LoadeError => e
    STDERR.puts "You should install rbczmq or ffi_rzmq before running iruby notebook. See README."
  end
end
