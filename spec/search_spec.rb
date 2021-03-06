# frozen_string_literal: true

RSpec.describe Onyphe::Clients::Search, :vcr do
  subject { Onyphe::API.new }

  describe "#datascan" do
    it "should return a response" do
      res = subject.search.datascan(
        product: "HTTP Server",
        port: 443,
        os: "Windows",
        tls: true
      )
      expect(res.error).to eq(0)
    end
  end

  describe "#synscan" do
    it "should return a response" do
      res = subject.search.synscan(
        port: 23,
        country: "FR",
        tag: "mirai"
      )
      expect(res.error).to eq(0)
    end
  end

  describe "#inetnum" do
    it "should return a response" do
      res = subject.search.inetnum(organization: "OVH SAS")
      expect(res.error).to eq(0)
    end
  end

  describe "#threatlist" do
    it "should return a response" do
      res = subject.search.threatlist(country: "RU")
      expect(res.error).to eq(0)
    end
  end

  describe "#pastries" do
    it "should return a response" do
      res = subject.search.pastries(content: "hacked")
      expect(res.error).to eq(0)
    end
  end

  describe "#resolver" do
    it "should return a response" do
      res = subject.search.resolver(ip: "124.108.0.0/16")
      expect(res.error).to eq(0)
    end
  end

  describe "#sniffer" do
    it "should return a response" do
      res = subject.search.sniffer(ip: "14.164.0.0/14")
      expect(res.error).to eq(0)
    end
  end

  describe "#ctl" do
    it "should return a response" do
      res = subject.search.ctl(host: "vpn")
      expect(res.error).to eq(0)
    end
  end

  describe "#onionscan" do
    it "should return a response" do
      res = subject.search.onionscan("app.http.keywords": "dump")
      expect(res.error).to eq(0)
    end
  end
end
