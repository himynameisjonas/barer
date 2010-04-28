Given /^there is (\d) bars$/ do |number_of_bars|
  number_of_bars.to_i.times do |i|
    @user.bar.create!({
                    :name => "bar#{i+1}",
                    :street => "bar#{i+1}gatan",
                    :city => "bar#{i+1}staden",
                    :lat => 57.7069272000,
                    :lng => 11.9678614000              
                  })
  end
end

Given /^there is 1 bar$/ do 
  @bar = @user.bar.create!({
          :name => "bar1",
          :street => "bar1gatan",
          :city => "bar1staden",
        })
end

Given /^the bar has 1 beer$/ do
  @bar.beer.create(:name => "Red Stripe", :price => "35")
end
