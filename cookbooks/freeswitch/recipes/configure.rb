# Cookbook Name:: freeswitch
# Recipe:: configure
#
# Copyright 2012, Chris Fordham
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

template "/opt/freeswitch/conf/vars.xml" do
  source "vars.xml.erb"
  mode 0640
  owner "freeswitch"
  group "daemon"
end

template "/opt/freeswitch/conf/sip_profiles/internal.xml" do
  source "internal.xml.erb"
  mode 0640
  owner "freeswitch"
  group "daemon"
end

template "/opt/freeswitch/conf/sip_profiles/external.xml" do
  source "external.xml.erb"
  mode 0640
  owner "freeswitch"
  group "daemon"
end

template "/opt/freeswitch/conf/autoload_configs/switch.conf.xml" do
  source "switch.conf.xml.erb"
  mode 0640
  owner "freeswitch"
  group "daemon"
end