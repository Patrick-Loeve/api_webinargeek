require 'rails_helper'

RSpec.describe 'Items API', type: :request do
  let!(:webinar) {create(:webinar)}
  let!(:episode) { create(:episode, webinar_id: webinar.id)}
  let!(:broadcast) { create(:broadcast, episode_id: episode.id) }
  let!(:subscription) { create(:subscription,  broadcast_id: broadcast.id) }
  let(:broadcast_id) { broadcast.id }
  let(:webinar_id)  {webinar.id}
  let(:episode_id) { episode.id }
  let(:id) { subscription.id }
  let(:headers) { valid_headers }

  it 'get a list subscriptions' do
    get '/api/v1/subscriptions'
    json = JSON.parse(response.body)
    expect(json.size).to eq(1)    
  end

  describe 'GET /api/v1/subscriptions/:id' do
    before { get "/api/v1/subscriptions/#{id}" }

    context 'when susbscription item exists' do

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the item' do
        expect(json['data']['id'].to_i).to eq(id)
      end
    end
  end

  describe 'POST /api/v1/subscriptions' do
    let(:valid_attributes) { {  firstname: 'Patrick', surname: 'Loeve', email: 'loevepatrick@hireme.com', watched: false, registration_ip: "127001", broadcast_id: 1  } }
    let(:invalid_attributes)  { {} }

    context 'when request attributes are valid' do

      before do
         post "/api/v1/subscriptions", params: valid_attributes

      end

     it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
    context 'when an invalid request' do
      before do
        post "/api/v1/subscriptions", params: invalid_attributes
      end

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end


    end
  end


end