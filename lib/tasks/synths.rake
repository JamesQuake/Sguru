namespace :data do

  task :synths => :environment do
    puts "running my synths task"

    Synth.destroy_all

    Synth.create(manufacturer: "Roland", model: "Juno106", summary: "Roland Juno106 is a EDM/House music Beast", modification: nil)
    Synth.create(manufacturer: "Crumar", model: "BitOne", summary: "Roland Juno106 Knock Off, has better Leads", modification: nil)
    Synth.create(manufacturer: "Akai", model: "AX60", summary: "Roland Juno106 Knock Off, has better Bass", modification: nil)
    Synth.create(manufacturer: "Korg", model: "DW8000", summary: "Get that John Carpenter 'Big Trouble in Little China Synth Sound'", modification: nil)
    Synth.create(manufacturer: "Roland", model: "JD880", summary: "Good Digital Synth easy to edit Sound Patches", modification: nil)
    Synth.create(manufacturer: "Kawai", model: "K3", summary: "Awesome Digital/Analog Synth, Jan Hammer Style", modification: "Removable 3Prong Power Adapter")



  end
end
