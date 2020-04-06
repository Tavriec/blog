require "rails_helper"

feature "Contact Creation" do
  scenario "allows accees to contact page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allows a guest to create contact" do |variable|
    visit '/contacts'
    fill_in :contact_email, :with => 'user@gmail.com'
    fill_in :contact_message, :with => 'Bla-bla'
    click_button 'Send message'
    expect(page).to have_content 'Thank you'
  end

end