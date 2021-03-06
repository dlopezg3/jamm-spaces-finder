# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
Booking.delete_all
Space.delete_all
User.delete_all

# USER
100.times do
 email = Faker::Internet.email
 password = '123456'
 User.create(email: email, password: password)PG::ForeignKeyViolation: ERROR
end

# Space

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

address_array = ["8 Nugent Rd, London N19 3QF, UK",
"15 Meadow Rd, Windermere LA23 2EU, UK",
"21 Gosforth Rd, Seascale CA20 1PW, UK",
"1 Dunlop St, Greenock PA16 9BG, UK",
"46 Hillview Rd, Worthing BN14 0BX, UK",
"1 Duguid Dr, Saltcoats KA21 6LW, UK",
"Oakenden Ln, Edenbridge TN8, UK",
"65 Warstock Rd, Birmingham B14 4RX, UK",
"B4403, Bala LL23, UK",
"47 Greenburn Dr, Aberdeen AB21 9ER, UK",
"Barnwell Dr, Cambridge CB5 8UU, UK",
"4 Stane Grove, Shotts ML7 5GA, UK",
"Grand Union Canal Walk, Hayes, UK",
"27 Morgan Ave, Sheffield S5 8QH, UK",
"2 Silverwell Walk, Liverpool L11 6LL, UK",
"24 Westhill Park, Highgate, London N6 6ND, UK",
"5 Braeriach Ct, Aviemore PH22 1TL, UK",
"89-91 A107, Cazenove, London E5 9BU, UK",
"41-43 Moreton St, Pimlico, London SW1V 2NY, UK",
"20 Agnes Cl, London E6 5PH, UK",
"Exmouth Rd, Exeter EX3, UK",
"200 Pennymead, Harlow CM20 3JE, UK",
"2 Langley Rd, Swindon SN5, UK",
"24 Wentworth Rd, London E12 5BD, UK",
"56 Fox St, Greenock PA16 8QS, UK",
"11 Thurlow Ave, Herne Bay CT6 6JF, UK",
"Brick Cl, Kiln Farm, Milton Keynes MK11, UK",
"5 Myatt Cl, Wolverhampton WV2 2DJ, UK",
"A846, Isle of Islay PA43 7JF, UK",
"1 Bassenthwaite Rd, Benfleet SS7 3JG, UK",
"6 Pittman Way, Fulwood, Preston PR2 9YW, UK",
"100 Sandygate Grove, Sheffield S10 5SZ, UK",
"49 Harleston Way, Gateshead NE10 9BQ, UK",
"218 Chichester Rd, Bognor Regis PO21 5BE, UK",
"12 Grimsby Rd, Laceby, Grimsby DN37 7DB, UK",
"8 Edgars Ct, Welwyn Garden City AL7 3SR, UK",
"111 Glynwood Ct, Forest Hill, London SE23 3HU, UK",
"A701, Moffat DG10 9PQ, UK",
"B8008, Arisaig PH39 4NL, UK",
"7 Stonefield, Tarskavaig, Isle of Skye IV46 8SB, UK",
"17-29 Greeto Falls Ave, Largs KA30 9HH, UK",
"7 Harold Wilson Dr, Hesleden, Hartlepool TS27 4PQ, UK",
"4 Dychurch Ln, Northampton NN1 2AB, UK",
"21 Onslow Rd, New Malden KT3 4AR, UK",
"Llantwit Major Rd, Cowbridge CF71 7PF, UK",
"Dalzell St, United Kingdom",
"82 Topsham Rd, Smethwick B67 7LZ, UK",
"125 Argyle Rd, London W13 0DB, UK",
"1 Louise Gardens, Rainham RM13 8LH, UK",
"6 Ranmoor Hill, Hathersage, Hope Valley S32 1BU, UK",
"South London Mail Centre, 53 Nine Elms Ln, London SW8 5BB, UK",
"Dalzell St, United Kingdom",
"24 Winding Mill S, Brierley Hill DY5 2LW, UK",
"5 Seagrave Ct, Northampton NN3 8UH, UK",
"325 Birmingham Rd, Sutton Coldfield B72 1EH, UK",
"Unnamed Road, Isle of Mull PA67 6DW, UK",
"145 High St, Slough SL1 1EX, UK",
"8 Park Rd, Kiddington, Woodstock OX20 1BL, UK",
"B8021, Gairloch IV21 2BT, UK",
"Unnamed Road, Goodwick SA64 0JG, UK",
"1 Ffordd Caergybi, Cemaes Bay LL67 0LT, UK",
"Manor Rd, Abbots Leigh, Bristol BS8 3RP, UK",
"2 North Rd, Okehampton EX20 1BE, UK",
"8 North Ave, Burton Latimer, Kettering NN15 5PG, UK",
"6 Blackwater Cl, Rainham RM13 8UA, UK",
"Fairweather Court, 1A Lakeside Rd, London N13 4PW, UK",
"9 Clarendon St, Nottingham NG1 5HR, UK",
"17A Snowberry Cl, Taverham, Norwich NR8 6YQ, UK",
"Unnamed Road, Inverurie AB51 7JR, UK",
"14 Peaches Cl, Sutton SM2 7BJ, UK",
"67 Central Ave, Enfield EN1 3QF, UK",
"Brington Ln, Daventry NN11 2NR, UK",
"Rose Cottage, 5 Union Rd, Linlithgow EH49 7DY, UK",
"B1108, Thetford IP26 5BX, UK",
"2 Chapel St, Ermington, Ivybridge PL21 9ND, UK",
"1 Rankin Dr, Largs KA30 9DA, UK",
"Bassetts Ln, Mayfield TN20 6NX, UK",
"13 Malthouse Road, London SW8, UK",
"98-100 Canal St, Perth PH2 8HX, UK",
"89 Queens Walk, Ruislip HA4 0NN, UK",
"22 Lordsfield Ave, Ashton-under-Lyne OL7 9BT, UK",
"1 Devonshire Terrace, Coniston LA21 8HG, UK",
"4 Swardeston Ln, East Carleton, Norwich NR14 8LF, UK",
"Church Ln, Market Rasen LN8 6JP, UK",
"A83, Tarbert PA29 6SX, UK",
"Copperas Ln, Droylsden, Manchester M43 6AR, UK",
"3 Osborne Pl, Lower St, Merriott TA16 5NP, UK",
"Unnamed Road, Isle of Islay PA45 7QP, UK",
"45 Brook St, Twyford, Reading RG10, UK",
"Denehurst Guest House, 40 Queen's Dr, Windermere LA23 2EL, UK",
"2 Clapton Rd, Crewkerne TA18, UK",
"47 Cuillins Ave, Port Glasgow PA14 6LU, UK",
"Nursery Ln, Hull HU6, UK",
"9 Boynton Rd, East Cowton, Northallerton DL7 0EA, UK",
"40 Brian Ave, Waltham, Grimsby DN37 0JS, UK",
"Unnamed Road, Amlwch LL68 0NT, UK",
"Lodge Cottage, Broseley TF12 5BP, UK",
"Queens House, 42-44 New St, Honiton EX14 1BJ, UK",
"17-19 The Den, Dalry KA24 4JG, UK",
"2b Dodd Rd, Watford WD24 5FN, UK"]

30.times do
  name = Faker::Commerce.department
  description = lorem
  address = address_array.sample
  price = (1..30).to_a.sample
  first_user = User.first.id
  last_user = User.last.id
  user_id =  (first_user..last_user).to_a.sample
  img = (1..23).to_a.sample.to_s
  new_space = Space.create(description: description, name: name, address: address, price_per_hour: price, user_id: user_id, image_url: img)
end


