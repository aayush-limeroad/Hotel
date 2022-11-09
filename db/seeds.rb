Order.destroy_all
Customer.destroy_all

no_of_customers=rand(3..5)
no_of_customers.times do
    cust_name=Faker::Name.male_first_name
    cust_age=rand(18..25)
    customer=Customer.create(name:cust_name,age:cust_age)
    Number_of_orders=2
    Number_of_orders.times do
        cust_name=Faker::Food.dish
        amt=rand(200..280)
        dscp=Faker::Food.description
        rev="Hey the food was good"

        customer.orders.create(food:cust_name,amount:amt,description:dscp,review:rev)
    end
end