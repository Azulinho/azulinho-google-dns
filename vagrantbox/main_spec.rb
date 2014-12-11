require_relative 'spec_helper'


describe file('/etc/resolv.conf') do
  its(:content) { should include 'nameserver 8.8.8.8'  }
  its(:content) { should include 'nameserver 8.8.4.4'  }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
