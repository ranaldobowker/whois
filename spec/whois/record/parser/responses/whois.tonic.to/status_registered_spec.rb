# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tonic.to/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.tonic.to.rb'

describe Whois::Record::Parser::WhoisTonicTo, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.tonic.to/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      lambda { subject.disclaimer }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#domain" do
    it do
      lambda { subject.domain }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
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
      lambda { subject.created_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#updated_on" do
    it do
      lambda { subject.updated_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      lambda { subject.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrar" do
    it do
      lambda { subject.registrar }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      lambda { subject.registrant_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#admin_contacts" do
    it do
      lambda { subject.admin_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#technical_contacts" do
    it do
      lambda { subject.technical_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#nameservers" do
    it do
      lambda { subject.nameservers }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#response_incomplete?" do
    it do
      subject.response_incomplete?.should == false
    end
  end
end
