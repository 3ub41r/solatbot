DROP TABLE IF EXISTS Chats;
CREATE TABLE Chats (id TEXT, locations_code TEXT);

DROP TABLE IF EXISTS Locations;
CREATE TABLE Locations (code TEXT, name TEXT, states_id INTEGER);

DROP TABLE IF EXISTS States;
CREATE TABLE States (id INTEGER, name TEXT);

INSERT INTO States (id, name) VALUES 
(1, 'Johor'),
(2, 'Kedah'),
(3, 'Kelantan'),
(4, 'Melaka'),
(5, 'Negeri Sembilan'),
(6, 'Pahang'),
(7, 'Perak'),
(8, 'Perlis'),
(9, 'Pulau Pinang'),
(10, 'Sabah'),
(11, 'Sarawak'),
(12, 'Selangor'),
(13, 'Terengganu'),
(14, 'Wilayah Persekutuan');

INSERT INTO Locations (name, code, states_id) VALUES
('  Batu Pahat  ', '    jhr-0   ', 1)  ,
('  Gemas   ', '    jhr-1   ', 1)  ,
('  Johor Bahru ', '    jhr-2   ', 1)  ,
('  Kluang  ', '    jhr-3   ', 1)  ,
('  Kota Tinggi ', '    jhr-4   ', 1)  ,
('  Mersing ', '    jhr-5   ', 1)  ,
('  Muar    ', '    jhr-6   ', 1)  ,
('  Pemanggil   ', '    jhr-7   ', 1)  ,
('  Pontian ', '    jhr-8   ', 1)  ,
('  Pulau Aur   ', '    jhr-9   ', 1)  ,
('  Segamat ', '    jhr-10  ', 1)  ,
('  Baling  ', '    kdh-0   ', 2)  ,
('  Bandar Baharu   ', '    kdh-1   ', 2)  ,
('  Kota Setar  ', '    kdh-2   ', 2)  ,
('  Kuala Muda  ', '    kdh-3   ', 2)  ,
('  Kubang Pasu ', '    kdh-4   ', 2)  ,
('  Kulim   ', '    kdh-5   ', 2)  ,
('  Langkawi    ', '    kdh-6   ', 2)  ,
('  Padang Terap    ', '    kdh-7   ', 2)  ,
('  Pendang ', '    kdh-8   ', 2)  ,
('  Pokok Sena  ', '    kdh-9   ', 2)  ,
('  Puncak Gunung Jerai ', '    kdh-10  ', 2)  ,
('  Sik ', '    kdh-11  ', 2)  ,
('  Yan ', '    kdh-12  ', 2)  ,
('  Bachok  ', '    ktn-0   ', 3)  ,
('  Bertam  ', '    ktn-1   ', 3)  ,
('  Jeli    ', '    ktn-2   ', 3)  ,
('  Kota Bharu  ', '    ktn-3   ', 3)  ,
('  Kuala Krai  ', '    ktn-4   ', 3)  ,
('  Machang ', '    ktn-5   ', 3)  ,
('  Mukim Chiku ', '    ktn-6   ', 3)  ,
('  Mukim Galas ', '    ktn-7   ', 3)  ,
('  Pasir Mas   ', '    ktn-8   ', 3)  ,
('  Pasir Puteh ', '    ktn-9   ', 3)  ,
('  Tanah Merah ', '    ktn-10  ', 3)  ,
('  Tumpat  ', '    ktn-11  ', 3)  ,
('  Alor Gajah  ', '    mlk-0   ', 4)  ,
('  Bandar Melaka   ', '    mlk-1   ', 4)  ,
('  Jasin   ', '    mlk-2   ', 4)  ,
('  Masjid Tanah    ', '    mlk-3   ', 4)  ,
('  Merlimau    ', '    mlk-4   ', 4)  ,
('  Nyalas  ', '    mlk-5   ', 4)  ,
('  Jelebu  ', '    ngs-0   ', 5)  ,
('  Jempol  ', '    ngs-1   ', 5)  ,
('  Kuala Pilah ', '    ngs-2   ', 5)  ,
('  Port Dickson    ', '    ngs-3   ', 5)  ,
('  Rembau  ', '    ngs-4   ', 5)  ,
('  Seremban    ', '    ngs-5   ', 5)  ,
('  Tampin  ', '    ngs-6   ', 5)  ,
('  Tampin  ', '    ngs-6   ', 6)  ,
('  Bentong ', '    phg-0   ', 6)  ,
('  Bera    ', '    phg-1   ', 6)  ,
('  Bukit Fraser    ', '    phg-2   ', 6)  ,
('  Cameron Highland    ', '    phg-3   ', 6)  ,
('  Chenor  ', '    phg-4   ', 6)  ,
('  Genting Highlands   ', '    phg-5   ', 6)  ,
('  Jerantut    ', '    phg-6   ', 6)  ,
('  Kuala Lipis ', '    phg-7   ', 6)  ,
('  Kuantan ', '    phg-8   ', 6)  ,
('  Maran   ', '    phg-9   ', 6)  ,
('  Muadzam Shah    ', '    phg-10  ', 6)  ,
('  Pekan   ', '    phg-11  ', 6)  ,
('  Pulau Tioman    ', '    phg-12  ', 6)  ,
('  Raub    ', '    phg-13  ', 6)  ,
('  Rompin  ', '    phg-14  ', 6)  ,
('  Temerloh    ', '    phg-15  ', 6)  ,
('  Bagan Datoh ', '    prk-0   ', 7)  ,
('  Bagan Serai ', '    prk-1   ', 7)  ,
('  Batu Gajah  ', '    prk-2   ', 7)  ,
('  Belum   ', '    prk-3   ', 7)  ,
('  Beruas  ', '    prk-4   ', 7)  ,
('  Bukit Larut ', '    prk-5   ', 7)  ,
('  Grik    ', '    prk-6   ', 7)  ,
('  Ipoh    ', '    prk-7   ', 7)  ,
('  Kampar  ', '    prk-8   ', 7)  ,
('  Kampung Gajah   ', '    prk-9   ', 7)  ,
('  Kuala Kangsar   ', '    prk-10  ', 7)  ,
('  Lenggong    ', '    prk-11  ', 7)  ,
('  Lumut   ', '    prk-12  ', 7)  ,
('  Parit   ', '    prk-13  ', 7)  ,
('  Parit Buntar    ', '    prk-14  ', 7)  ,
('  Pengkalan Hulu  ', '    prk-15  ', 7)  ,
('  Pulau Pangkor   ', '    prk-16  ', 7)  ,
('  Selama  ', '    prk-17  ', 7)  ,
('  Setiawan    ', '    prk-18  ', 7)  ,
('  Slim River  ', '    prk-19  ', 7)  ,
('  Sri Iskandar    ', '    prk-20  ', 7)  ,
('  Sungai Siput    ', '    prk-21  ', 7)  ,
('  Taiping ', '    prk-22  ', 7)  ,
('  Tanjung Malim   ', '    prk-23  ', 7)  ,
('  Tapah   ', '    prk-24  ', 7)  ,
('  Teluk Intan ', '    prk-25  ', 7)  ,
('  Temengor    ', '    prk-26  ', 7)  ,
('  Arau    ', '    pls-0   ', 8)  ,
('  Kangar  ', '    pls-1   ', 8)  ,
('  Padang Besar    ', '    pls-2   ', 8)  ,
('  Pulau Pinang    ', '    png-0   ', 9)  ,
('  Balong  ', '    sbh-0   ', 10)  ,
('  Bandar Bukit Garam  ', '    sbh-1   ', 10)  ,
('  Beaufort    ', '    sbh-2   ', 10)  ,
('  Beluran ', '    sbh-3   ', 10)  ,
('  Gunung Kinabalu ', '    sbh-4   ', 10)  ,
('  Kalabakan   ', '    sbh-5   ', 10)  ,
('  Keningau    ', '    sbh-6   ', 10)  ,
('  Kota Belud  ', '    sbh-7   ', 10)  ,
('  Kota Kinabalu   ', '    sbh-8   ', 10)  ,
('  Kota Marudu ', '    sbh-9   ', 10)  ,
('  Kuala Penyu ', '    sbh-10  ', 10)  ,
('  Kuamut  ', '    sbh-11  ', 10)  ,
('  Kudat   ', '    sbh-12  ', 10)  ,
('  Kunak   ', '    sbh-13  ', 10)  ,
('  Lahat Datu  ', '    sbh-14  ', 10)  ,
('  Long Pa Sia ', '    sbh-15  ', 10)  ,
('  Membakut    ', '    sbh-16  ', 10)  ,
('  Merotai ', '    sbh-17  ', 10)  ,
('  Nabawan ', '    sbh-18  ', 10)  ,
('  Papar   ', '    sbh-19  ', 10)  ,
('  Penampang   ', '    sbh-20  ', 10)  ,
('  Pensiangan  ', '    sbh-21  ', 10)  ,
('  Pinangah    ', '    sbh-22  ', 10)  ,
('  Pitas   ', '    sbh-23  ', 10)  ,
('  Pulau Banggi    ', '    sbh-24  ', 10)  ,
('  Ranau   ', '    sbh-25  ', 10)  ,
('  Sahabat ', '    sbh-26  ', 10)  ,
('  Sandakan    ', '    sbh-27  ', 10)  ,
('  Semawang    ', '    sbh-28  ', 10)  ,
('  Semporna    ', '    sbh-29  ', 10)  ,
('  Silabukan   ', '    sbh-30  ', 10)  ,
('  Sipitang    ', '    sbh-31  ', 10)  ,
('  Tambisan    ', '    sbh-32  ', 10)  ,
('  Tambunan    ', '    sbh-33  ', 10)  ,
('  Tawau   ', '    sbh-34  ', 10)  ,
('  Telupit ', '    sbh-35  ', 10)  ,
('  Temanggong  ', '    sbh-36  ', 10)  ,
('  Tenom   ', '    sbh-37  ', 10)  ,
('  Terusan ', '    sbh-38  ', 10)  ,
('  Tuaran  ', '    sbh-39  ', 10)  ,
('  Tungku  ', '    sbh-40  ', 10)  ,
('  Weston  ', '    sbh-41  ', 10)  ,
('  Bau ', '    swk-0   ', 11)  ,
('  Bekenu  ', '    swk-1   ', 11)  ,
('  Belaga  ', '    swk-2   ', 11)  ,
('  Belawai ', '    swk-3   ', 11)  ,
('  Belingan    ', '    swk-4   ', 11)  ,
('  Betong  ', '    swk-5   ', 11)  ,
('  Bintulu ', '    swk-6   ', 11)  ,
('  Bitangor    ', '    swk-7   ', 11)  ,
('  Dalat   ', '    swk-8   ', 11)  ,
('  Daro    ', '    swk-9   ', 11)  ,
('  Debak   ', '    swk-10  ', 11)  ,
('  Engkelili   ', '    swk-11  ', 11)  ,
('  Igan    ', '    swk-12  ', 11)  ,
('  Julau   ', '    swk-13  ', 11)  ,
('  Kabong  ', '    swk-14  ', 11)  ,
('  Kanowit ', '    swk-15  ', 11)  ,
('  Kapit   ', '    swk-16  ', 11)  ,
('  Kuching ', '    swk-17  ', 11)  ,
('  Lawas   ', '    swk-18  ', 11)  ,
('  Limbang ', '    swk-19  ', 11)  ,
('  Lingga  ', '    swk-20  ', 11)  ,
('  Lundu   ', '    swk-21  ', 11)  ,
('  Marudi  ', '    swk-22  ', 11)  ,
('  Matu    ', '    swk-23  ', 11)  ,
('  Meludam ', '    swk-24  ', 11)  ,
('  Miri    ', '    swk-25  ', 11)  ,
('  Niah    ', '    swk-26  ', 11)  ,
('  Oya ', '    swk-27  ', 11)  ,
('  Pusa    ', '    swk-28  ', 11)  ,
('  Rajang  ', '    swk-29  ', 11)  ,
('  Roban   ', '    swk-30  ', 11)  ,
('  Samarahan   ', '    swk-31  ', 11)  ,
('  Saratok ', '    swk-32  ', 11)  ,
('  Sarikei ', '    swk-33  ', 11)  ,
('  Sebauh  ', '    swk-34  ', 11)  ,
('  Sebuyau ', '    swk-35  ', 11)  ,
('  Sematan ', '    swk-36  ', 11)  ,
('  Serian  ', '    swk-37  ', 11)  ,
('  Sibu    ', '    swk-38  ', 11)  ,
('  Sibuti  ', '    swk-39  ', 11)  ,
('  Simunjan    ', '    swk-40  ', 11)  ,
('  Song    ', '    swk-41  ', 11)  ,
('  Spaoh   ', '    swk-42  ', 11)  ,
('  Sri Aman    ', '    swk-43  ', 11)  ,
('  Sundar  ', '    swk-44  ', 11)  ,
('  Tatau   ', '    swk-45  ', 11)  ,
('  Terusan ', '    swk-46  ', 11)  ,
('  Gombak  ', '    sgr-0   ', 12)  ,
('  Hulu Langat ', '    sgr-1   ', 12)  ,
('  Hulu Selangor   ', '    sgr-2   ', 12)  ,
('  Klang   ', '    sgr-3   ', 12)  ,
('  Kuala Langat    ', '    sgr-4   ', 12)  ,
('  Kuala Selangor  ', '    sgr-5   ', 12)  ,
('  Petaling    ', '    sgr-6   ', 12)  ,
('  Rawang  ', '    sgr-7   ', 12)  ,
('  Sabak Bernam    ', '    sgr-8   ', 12)  ,
('  Sepang  ', '    sgr-9   ', 12)  ,
('  Shah Alam   ', '    sgr-10  ', 12)  ,
('  Besut   ', '    trg-0   ', 13)  ,
('  Hulu Terrenganu ', '    trg-1   ', 13)  ,
('  Kemaman Dungun  ', '    trg-2   ', 13)  ,
('  Kuala Terengganu    ', '    trg-3   ', 13)  ,
('  Marang  ', '    trg-4   ', 13)  ,
('  Setiu   ', '    trg-5   ', 13)  ,
('  Kuala Lumpur    ', '    wlp-0   ', 14)  ,
('  Labuan  ', '    wlp-1   ', 14)  ,
('  Putrajaya   ', '    wlp-2   ', 14);

UPDATE Locations SET name = trim(name), code = trim(code);