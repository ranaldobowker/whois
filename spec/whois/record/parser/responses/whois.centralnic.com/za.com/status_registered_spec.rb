# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/za.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.centralnic.com/za.com/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/"
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "siyenza.za.com"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "CNIC-DO333077"
    end
  end
  describe "#status" do
    it do
      subject.status.should == ["OK"]
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2004-11-17 11:47:29 UTC")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2012-01-16 16:23:22 UTC")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2013-11-17 23:59:59 UTC")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "C12112"
      subject.registrar.name.should         == nil
      subject.registrar.organization.should == "Megaweb Internet Services"
      subject.registrar.url.should          == "http://www.megaweb.co.za/"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "H1063006"
      subject.registrant_contacts[0].name.should          == "MegaWeb Internet Services cc"
      subject.registrant_contacts[0].organization.should  == nil
      subject.registrant_contacts[0].address.should       == nil
      subject.registrant_contacts[0].city.should          == nil
      subject.registrant_contacts[0].zip.should           == "2060"
      subject.registrant_contacts[0].state.should         == nil
      subject.registrant_contacts[0].country.should       == nil
      subject.registrant_contacts[0].country_code.should  == "ZA"
      subject.registrant_contacts[0].phone.should         == "+27.0114851984"
      subject.registrant_contacts[0].fax.should           == "+27.0114855999"
      subject.registrant_contacts[0].email.should         == "dns-admin@megaweb.co.za"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should            == "H119106"
      subject.admin_contacts[0].name.should          == "Liz Hart"
      subject.admin_contacts[0].organization.should  == "Siyenza Management"
      subject.admin_contacts[0].address.should       == nil
      subject.admin_contacts[0].city.should          == nil
      subject.admin_contacts[0].zip.should           == "2060"
      subject.admin_contacts[0].state.should         == nil
      subject.admin_contacts[0].country.should       == nil
      subject.admin_contacts[0].country_code.should  == "ZA"
      subject.admin_contacts[0].phone.should         == "+27.0114851984"
      subject.admin_contacts[0].fax.should           == "+27.0114855999"
      subject.admin_contacts[0].email.should         == "dns-admin@megaweb.co.za"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "C12112"
      subject.technical_contacts[0].name.should          == "Laida Peters"
      subject.technical_contacts[0].organization.should  == "Megaweb Internet Services"
      subject.technical_contacts[0].address.should       == nil
      subject.technical_contacts[0].city.should          == "Gauteng"
      subject.technical_contacts[0].zip.should           == "2192"
      subject.technical_contacts[0].state.should         == nil
      subject.technical_contacts[0].country.should       == nil
      subject.technical_contacts[0].country_code.should  == "ZA"
      subject.technical_contacts[0].phone.should         == "+27.027114851984"
      subject.technical_contacts[0].fax.should           == "+27.027114851986"
      subject.technical_contacts[0].email.should         == "dns-admin@megaweb.co.za"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(2).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1a.your-server.co.za"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "nsa.second-ns.co.za"
    end
  end
end
