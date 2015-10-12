# encoding: utf-8
# author: Christoph Hartmann
# author: Dominik Richter

require 'helper'
require 'vulcano/resource'

describe 'Vulcano::Resources::InetdConf' do
  it 'verify limits.conf config parsing' do
    resource = load_resource('inetd_config')
    _(resource.send('shell')).must_equal nil
    _(resource.send('login')).must_equal nil
    _(resource.send('ftp')).must_equal %w{stream tcp nowait root /usr/sbin/in.ftpd in.ftpd}
  end
end
