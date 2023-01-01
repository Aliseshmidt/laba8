# frozen_string_literal: true

require 'rails_helper'
require 'nokogiri'

RSpec.describe 'Task8s', type: :request do
  describe 'GET /input' do
    controller = Task8Controller.new
    it 'should check http status' do
      get '/task8/output'
      expect(response).to have_http_status(:success)
    end

    it 'should check values' do
      get '/task8/output?digit=3&commit=Enter'
      html_doc = Nokogiri::HTML(response.body)
      expect(controller.find_armstrongs(3)).to eq(html_doc.css('table').css('tr')[1..].map do |row|
                                                    row.css('td')[1].text.to_f
                                                  end)
    end

    it 'should check http status' do
      get '/task8/input'
      expect(response).to have_http_status(:success)
    end

    it 'should check values' do
      get '/task8/output?digit=3&commit=Enter'
      expect(assigns(:digits)).not_to be_nil
    end
  end
end
