require "application_system_test_case"

class BatchesTest < ApplicationSystemTestCase
  setup do
    @batch = batches(:one)
  end

  test "visiting the index" do
    visit batches_url
    assert_selector "h1", text: "Batches"
  end

  test "should create batch" do
    visit batches_url
    click_on "New batch"

    fill_in "Best by", with: @batch.best_by
    fill_in "Exp date", with: @batch.exp_date
    fill_in "Item name", with: @batch.item_name
    fill_in "Producer", with: @batch.producer_id
    check "Recall" if @batch.recall
    fill_in "Store", with: @batch.store_id
    click_on "Create Batch"

    assert_text "Batch was successfully created"
    click_on "Back"
  end

  test "should update Batch" do
    visit batch_url(@batch)
    click_on "Edit this batch", match: :first

    fill_in "Best by", with: @batch.best_by
    fill_in "Exp date", with: @batch.exp_date
    fill_in "Item name", with: @batch.item_name
    fill_in "Producer", with: @batch.producer_id
    check "Recall" if @batch.recall
    fill_in "Store", with: @batch.store_id
    click_on "Update Batch"

    assert_text "Batch was successfully updated"
    click_on "Back"
  end

  test "should destroy Batch" do
    visit batch_url(@batch)
    click_on "Destroy this batch", match: :first

    assert_text "Batch was successfully destroyed"
  end
end
