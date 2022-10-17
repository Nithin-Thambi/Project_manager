30.times do 
    p = Project.create(p_name: Faker::Lorem.word,
                p_description: Faker::Lorem.sentence(word_count: rand(10 .. 30))
                )

    rand(3 .. 10).times do
        p.tasks.create(t_name: Faker::Lorem.sentence(word_count: rand(4 .. 10)),
        t_discription: Faker::Lorem.sentence(word_count: rand(15 .. 30))
        )
    end
end