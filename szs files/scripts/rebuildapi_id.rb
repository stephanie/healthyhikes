apis = {
'26jl2yvk' => 'Central/Western',
'7zzi4q14' => 'Causeway Bay',
'6gulobkw' => 'Mong Kok',
'bqzsf5ic' => 'Sham Shui Po',
'e3c2s5x8' => 'Kwai Chung',
'bd0v44ne' => 'Tai Po',
'atzhjba4' => 'Sha Tin',
'9bopkdlm' => 'Eastern',
'6dc2e436' => 'Tsuen Wan',
'54vcrjr0' => 'Kwun Tong',
'9ii6h4vw' => 'Yuen Long',
'5cuz4wde' => 'Tuen Mun',
'7ljienlw' => 'Tap Mun',
'64o81umu' => 'Tung Chung'}

apis.each{|y,x| District.find_by(area: x).update_attributes(:api_id => y)}