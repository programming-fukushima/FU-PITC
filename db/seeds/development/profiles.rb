fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]
affiliations = ["学部１", "学部２"]
0.upto(9) do |idx|
    Profile.create(
    family: fnames[idx % 4],
    first: gnames[idx % 3],
    affiliation: affiliations[idx % 2],
    birthday: "1981-#{(idx + 1) % 12}-01",
    sex: [1, 1, 2][idx % 3]
    )
end