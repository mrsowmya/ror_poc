# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([
	{ first_name: 'Rachel', last_name: 'Booker', email: 'rachel@gmail.com', phone_number: '9878906754', addresses_attributes: [{ street_address: '5th cross, J P nagar', city: 'Bangalore', state: 'Karnataka', zip: '560078' }]},
	{ first_name: 'Laura', last_name: 'Grey', email: 'laura@gmail.com', phone_number: '8878789450', addresses_attributes: [{ street_address: '7th cross, Vijayanagar', city: 'Bangalore', state: 'Karnataka', zip: '560007' }] },
	{ first_name: 'Craig', last_name: 'Johnson', email: 'johnson@gmail.com', phone_number: '8976545678', addresses_attributes: [{ street_address: '5th Main, Basaveshvar Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560009' }] },
	{ first_name: 'Mary', last_name: 'Jenkins', email: 'mary@gmail.com', phone_number: '8767890989', addresses_attributes: [{ street_address: '8th cross, Kuvempu Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560097' }] },
	{ first_name: 'Jamie', last_name: 'Smith', email: 'jamie@gmail.com', phone_number: '8765456789', addresses_attributes: [{ street_address: '7th cross, Hampi Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560098' }] },
	{ first_name: 'Chris', last_name: 'Green', email: 'chris@gmail.com', phone_number: '7766889900', addresses_attributes: [{ street_address: '67th cross, BTM Layout', city: 'Bangalore', state: 'Karnataka', zip: '560049' }] },
	{ first_name: 'Ben', last_name: 'Andrews', email: 'ben@gmail.com', phone_number: '6678654534', addresses_attributes: [{ street_address: '4th Main, Jayanagar', city: 'Bangalore', state: 'Karnataka', zip: '560045' }] },
	{ first_name: 'David', last_name: 'Longmuir', email: 'david@gmail.com', phone_number: '6754345678', addresses_attributes: [{ street_address: '7th Main, Rajaji Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560034' }] },
	{ first_name: 'Cynthia', last_name: 'Carey', email: 'cynthia@gmail.com', phone_number: '9890767878', addresses_attributes: [{ street_address: '4th Cross, Sadashivanagar', city: 'Bangalore', state: 'Karnataka', zip: '560053' }] },
	{ first_name: 'Melissa', last_name: 'MacBeth', email: 'melissa@gmail.com', phone_number: '6787675667', addresses_attributes: [{ street_address: '9th cross, Southend Circle', city: 'Bangalore', state: 'Karnataka', zip: '560089' }] },
	{ first_name: 'Laura', last_name: 'Wood', email: 'laura@gmail.com', phone_number: '8967898767', addresses_attributes: [{ street_address: '5th Cross, Banashankari', city: 'Bangalore', state: 'Karnataka', zip: '560076' }] },
	{ first_name: 'Alan', last_name: 'Brown', email: 'alan@gmail.com', phone_number: '8877665544', addresses_attributes: [{ street_address: '3rd Main, Vivek Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560065' }] },
	{ first_name: 'Elizabeth', last_name: 'Rigali', email: 'rigali@gmail.com', phone_number: '6677554433', addresses_attributes: [{ street_address: '23rd Main, Indira Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560089' }] },
	{ first_name: 'Marifran', last_name: 'Mazza', email: 'mazza@gmail.com', phone_number: '7780963457', addresses_attributes: [{ street_address: '16th Main, M G Road', city: 'Bangalore', state: 'Karnataka', zip: '560005' }] },
	{ first_name: 'Joel', last_name: 'Brand', email: 'joel@gmail.com', phone_number: '7688998890', addresses_attributes: [{ street_address: '19th Cross, Ashok Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560067' }] },
	{ first_name: 'Abdessalem', last_name: 'Dridi', email: 'dridi@gmail.com', phone_number: '7654890987', addresses_attributes: [{ street_address: '14th Main, Halsuru', city: 'Bangalore', state: 'Karnataka', zip: '560041' }] },
	{ first_name: 'Brian', last_name: 'Benjamin', email: 'brian@gmail.com', phone_number: '8789896756', addresses_attributes: [{ street_address: '7th cross, Kasthuri Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560073' }] },
	{ first_name: 'Christine', last_name: 'Andersen', email: 'andersen@gmail.com', phone_number: '7677898766', addresses_attributes: [{ street_address: '1st Main, Rammurthy Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560072' }] },
	{ first_name: 'Robert', last_name: 'Hart', email: 'robert@gmail.com', phone_number: '8977654534', addresses_attributes: [{ street_address: '6th cross, Mysore Road', city: 'Bangalore', state: 'Karnataka', zip: '560054' }] },
	{ first_name: 'Brian', last_name: 'Bell', email: 'bell@gmail.com', phone_number: '8765453432', addresses_attributes: [{ street_address: '3rd cross, Sanjay Nagar', city: 'Bangalore', state: 'Karnataka', zip: '560067' }] }
])