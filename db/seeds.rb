# User.create!([
#   {last_name: "Clawson", first_name: "Jens", email: "Jens@example.com", password_digest: "$2a$12$ThR5561C7R/9Mkjl.CVgceNKLsjznH3bhYvAMRXMBXbhv057Gzbzi", address: "home", phone_number: "555-1234", admin: true},
#   {last_name: "Clawson", first_name: "Tina", email: "Tina@example.com", password_digest: "$2a$12$fZIcNc70H8h5ZaYvxyQ1CeGGiwHxypNQh6njyXx34BIih9Qapaymq", address: "home", phone_number: "555-1234", admin: false},
#   {last_name: nil, first_name: nil, email: "Ann@example.com", password_digest: "$2a$12$V5gPH8fFZGTKCzTNtRnEi.NkTEOllX6AeRcuNMqYO2ZfW8UB82mDq", address: nil, phone_number: nil, admin: nil},
#   {last_name: nil, first_name: nil, email: "Vishal@example.com", password_digest: "$2a$12$hT50hvlLMhAcMF8bd94rauLHffE5vztO8fEnRy1Om.QOI9EjiAC7S", address: nil, phone_number: nil, admin: nil},
#   {last_name: nil, first_name: nil, email: "Emily@example.com", password_digest: "$2a$12$KHvLz.80ke.gXoX/TXUGm.TYeBD.SnR9lDaVxKV17dp8aPMqr9Zrq", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "Amanda@example.com", password_digest: "$2a$12$q9zQqJrAl1RciAk6Hrt5y.zhrOMW3qFOCFzJtJzWNbjv80eHr2sIm", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "ann@example.com", password_digest: "$2a$12$58AFQac4fq9iKM2P6Hp7pexo8vqf/EpKH3HTdslQGh4JNygHImZ4S", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "me@example.com", password_digest: "$2a$12$/YZpYUsFrSuF8hDGGapkN.TWDk3mY2VNznhT/8Pa8f47WMNYpT2Lm", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "jens@example.com", password_digest: "$2a$12$V6xcnUWZ0bh9.jJi17clHOjA7H6Wghg2S3YMmMTTA66yIinICIcGW", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "tina@example.com", password_digest: "$2a$12$5X3BI3hoDC.WAGnscwDzl.Ils5LlONjAZpL6uv9lJFon/sOUTnPJa", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "yomama@example.com", password_digest: "$2a$12$2EF2KZE4imCMwYe1/Id6xeRHy4HHiJ/wfEIUEP2KS0mIMGVYdU9jy", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "sd@d", password_digest: "$2a$12$7.C3Z.es7h/MeQlc/RbHWexeGhQaUJYJPATi3yblvCsOQOUZAUHTi", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "sdsd@example.com", password_digest: "$2a$12$.k9dewCvZUzgah8JYGdY4eTRUBPN8rmfMd5.bMpO..18ktzDz1SL2", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "asd@example.com", password_digest: "$2a$12$ij4Qc6wR9UH8VkICdxc5HOot2NPETRq3abi0v7OUJCmQw/vCm4fpK", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: nil, email: "sdcsdc@example.com", password_digest: "$2a$12$VRvUPeRi.FRiWNxZb4ehCeiHfPz7s//Biner9z4BvTdmb.Km32p/O", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: "dfdfcsd", email: "aac@example.com", password_digest: "$2a$12$Xyu8HMx6xiIMqGRy862fi.iKKJAJ83mbTSWZQ37EohI.bIC0g3JtK", address: nil, phone_number: nil, admin: false},
#   {last_name: nil, first_name: "asdf", email: "sdaf@example.com", password_digest: "$2a$12$M31AQ/4bXqWCCmfwnELySuBI3tdRHJz7YCAotDgOCJuim.1FbJkuy", address: nil, phone_number: nil, admin: false},
#   {last_name: "ASDAD", first_name: "ADSAD", email: "asdf@example.com", password_digest: "$2a$12$4LPaAFCAm7RcUOKnNWuQTOgOBmWIQQAptmGyqo9gkdx36T6TgWA7S", address: "aef", phone_number: "5555555", admin: false},
#   {last_name: "vsdv", first_name: "KJHKJH", email: "asva@example.com", password_digest: "$2a$12$pu5/jsdCkHDK/u7wvZ0H4ulGEq6LnxekGkWwx9yimpC37H3NY6b8C", address: "sas", phone_number: "savasv", admin: false},
#   {last_name: "Winkler", first_name: "Morgan", email: "Morgan@example.com", password_digest: "$2a$12$Bi1ZWIRgZv6axvs4Fq4Rluei0SPsWDHVapZ6CL3GJp5mLVBgsjfhS", address: "456 Anywhere", phone_number: "555-0987", admin: false},
#   {last_name: "Clawson", first_name: "Eno", email: "Eno@example.com", password_digest: "$2a$12$PfKBwFL2xXuVdjIfjqBCIuQWPTrKiE/gxV7DbaarwZ83Wy8gt/nSu", address: "home", phone_number: "555-1234", admin: false},
#   {last_name: "derpderp", first_name: "derp", email: "derp@example.com", password_digest: "$2a$12$N4b4rNET3XY4Du2ZRTwI0OtuQe9N0UxvouwpKmRRN0JuRXP.yBErm", address: "123 derp", phone_number: "555-derp", admin: false},
#   {last_name: "Clawson", first_name: "Me", email: "Me@example.com", password_digest: "$2a$12$r8dAPPnq5hp7VQsjmQ4u.u1oQ9fS6hceoot8QTsuvGccSo2KGGMbe", address: "kjfkjdfh", phone_number: "8593495739", admin: false},
#   {last_name: "Pants", first_name: "Amanda", email: "amanda@example.com", password_digest: "$2a$12$KUtnsTEzj2jc0g2K863U7eNlb1KMz/5ESPiO40vTG7ulQzVz3TJwS", address: "kjsdnkjshdfkjs", phone_number: "29387492837", admin: false}
# ])
# Tattooer.create!([
#   {last_name: "Davis", first_name: "Josh", email: "Josh@example.com", password_digest: "$2a$12$waJrRkXa6dszWob/OsthiunJNtL.PTS.17qoC3Xjs4sFGf1b19zL2", phone_number: "555-4321", tattoo_shop: "Moon Castle Tattoo"},
#   {last_name: "Parton", first_name: "Dolly", email: "Dolly@example.com", password_digest: "$2a$12$hMFtq5TIgOdR.I2osXS4yOAO1hMftRXjCBtvauloO5OPuF6dckvae", phone_number: "555-7777", tattoo_shop: "Dollywood"},
#   {last_name: "D", first_name: "Jenny", email: "Jen@example.com", password_digest: "$2a$12$naWWMjoE1NvlqRZl3xiMPeofZMxf/uh.Nh6ODuMB23mF0rtboPNWq", phone_number: "555-7878", tattoo_shop: "Outer Limits"},
#   {last_name: "Clawson", first_name: "Ann", email: "Ann@example.com", password_digest: "$2a$12$1nstjD4QrXqZ85G2Q0bJIufGzMpNQ6Q5jBO4VfdARAE7VpNDvLNdm", phone_number: "555-3456", tattoo_shop: "My Kitchen"},
#   {last_name: "Garcia", first_name: "Tiffany", email: "Tiffany@example.com", password_digest: "$2a$12$2VUCIiy864IaOIbyi6WlZut7Q0U/Htg3TGKhXSNmUuJdsyhlbS1E.", phone_number: "555-6789", tattoo_shop: "Raven Tattoos"}
# ])
# Application.create!([
#   {amount: 500, number_of_months: 6, approved: true, description: "teddy bear on  my bum", date_of_appt: "3/1/24", user_id: 1, tattooer_id: 1, interest_rate: "0.1", monthly_payment: "133.33"},
#   {amount: 1000, number_of_months: 12, approved: true, description: "sick neck tat", date_of_appt: "3/2/24", user_id: 1, tattooer_id: 1, interest_rate: "0.12", monthly_payment: "203.33"},
#   {amount: 1500, number_of_months: 12, approved: true, description: "hotdog on my forearm", date_of_appt: "3/3/24", user_id: 1, tattooer_id: 1, interest_rate: "0.12", monthly_payment: "305.0"},
#   {amount: 2000, number_of_months: 12, approved: true, description: "tribal neck sleeve", date_of_appt: "3/4/24", user_id: 1, tattooer_id: 1, interest_rate: "0.12", monthly_payment: "406.67"},
#   {amount: 500, number_of_months: 6, approved: true, description: "sick neck tat", date_of_appt: "3/5/24", user_id: 1, tattooer_id: 1, interest_rate: "0.1", monthly_payment: "133.33"},
#   {amount: 1000, number_of_months: 12, approved: true, description: "I heart LBC", date_of_appt: "3/6/24", user_id: 1, tattooer_id: 1, interest_rate: "0.12", monthly_payment: "203.33"},
#   {amount: 2500, number_of_months: 6, approved: true, description: "teddy bear on  my back", date_of_appt: "3/5/24", user_id: 1, tattooer_id: 1, interest_rate: "0.1", monthly_payment: "666.67"}
# ])
