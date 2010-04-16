Given /^there is (\d) bars$/ do |number_of_bars|
  number_of_bars.to_i.times do |i|
    Bar.create!({
                    :name => "bar#{i+1}",
                    :street => "bar#{i+1}gatan",
                    :city => "bar#{i+1}staden"
                  })
  end
end

Given /^there is 1 bar$/ do 
  @bar = Bar.create!({
          :name => "bar1",
          :street => "bar1gatan",
          :city => "bar1staden"
        })
end

Given /^the bar has 1 beer$/ do
  @bar.beer.create(:name => "Red Stripe", :price => "35")
end
