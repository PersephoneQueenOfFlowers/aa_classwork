@guests.each do |guest|
    json.set! guest.id do #set! is a jbuilder method 
        # json.id guest.id #json.my_key my_value
        # json.banana guest.flavor 
        # json.amount guest.amount
        # json.extract! guest, :id, :flavor, :amount #shorthand for above
        json.partial! "guest", guest: guest
            # use the partial named "guest" and give it the argument guest
    end
end
