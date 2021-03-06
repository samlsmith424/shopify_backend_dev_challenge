require "rails_helper"

RSpec.describe "Warehouses Index Page" do
  it 'has a list of warehouses' do
    visit warehouses_path

    expect(page).to have_content("Warehouses")
  end

  it 'has a button to create a warehouse' do
    visit warehouses_path
    expect(page).to have_button("Create Warehouse")

    click_button("Create Warehouse")

    expect(current_path).to eq(new_warehouse_path)
  end

  it 'has a link to the warehouse show page' do
    warehouse = Warehouse.create(name: "Large Warehouse", location: "Los Angeles, CA")

    visit warehouses_path
    expect(page).to have_link(warehouse.name)

    click_on(warehouse.name)

    expect(current_path).to eq(warehouse_path(warehouse))
  end
end
