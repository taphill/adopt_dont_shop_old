require 'rails_helper'

describe 'shelter show page' do
  let(:shelter) do
    Shelter.create(
      name: 'Test Shelter 1',
      address: '1 Test St.',
      state: 'Denver',
      city: 'CO',
      zip: 12345
    )
  end

  before do
    visit "shelters/#{shelter.id}"
  end

  it 'can see index link' do
    expect(page).to have_link('Shelters Index')
  end

  it 'can see shelter information' do
    expect(page).to have_content(shelter.name.to_s)
    expect(page).to have_content(shelter.address.to_s)
    expect(page).to have_content(shelter.state.to_s)
    expect(page).to have_content(shelter.city.to_s)
    expect(page).to have_content(shelter.zip.to_s)
  end

  it 'can see update shelter link' do
    expect(page).to have_link('Update Shelter')
  end

  it 'can see delete shelter link' do
    expect(page).to have_link('Delete Shelter')
  end
end