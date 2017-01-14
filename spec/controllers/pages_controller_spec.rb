require 'rails_helper'

describe HighVoltage::PagesController, '#show' do

  describe "GET /" do
    it "renders the pages/home view" do
      expect(get: root_url(subdomain: nil)).to route_to(controller: 'high_voltage/pages', action: 'show', id: 'home')
    end
  end

  %w(home).each do |page|
    context "on GET to /pages/#{page}" do
      before do
        get :show, params: {id: page}
      end
      it { should respond_with(:success) }
      it { should render_template(page) }
    end
  end

end
