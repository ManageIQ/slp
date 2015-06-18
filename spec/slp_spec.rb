require 'spec_helper'

describe SLP do
  it 'has a version number' do
    expect(SLP::VERSION).not_to be nil
  end

  it '#close' do
    expect(SLP.instance_methods).to include(:close)
  end

  it '#find_services' do
    expect(SLP.instance_methods).to include(:find_services)
  end

  it '#find_attributes' do
    expect(SLP.instance_methods).to include(:find_attributes)
  end

  it '#parse_service_url' do
    expect(SLP.instance_methods).to include(:parse_service_url)
  end

  it '.open' do
    expect(SLP).to respond_to(:open)
  end

  it '.close' do
    expect(SLP).to respond_to(:close)
  end

  it '.find_services' do
    expect(SLP).to respond_to(:find_services)
  end

  it '.find_attributes' do
    expect(SLP).to respond_to(:find_attributes)
  end

  it '.parse_service_url' do
    expect(SLP).to respond_to(:parse_service_url)
  end

end
