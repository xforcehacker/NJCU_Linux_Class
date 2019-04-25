#!/usr/bin/python
import random
import time


funfacts = ["female mosquitoes are the ones that bite", 
        "In 1386 a pig in France was executed by public hanging for the murder of a child.",
        "A single cloud can weight more than 1 million pounds.",
        "You cannot snore and dream at the same time.",
        "Bolts of lightning can shoot out of an erupting volcano.",
        "It would take a sloth one month to travel one mile.",
        "Banging your head against a wall burns 150 calories an hour.",
        "About 150 people per year are killed by coconuts."]

#index = random.randrange(0, len(funfacts)-1, 1)

with open('/opt/funfacts.log', 'a') as funout:
    while 1:
        while len(funfacts)>0:
            index = random.randrange(0, len(funfacts)-1, 1)
            funout.write(funfacts[index]+" \n")
            time.sleep(7)
            funout.flush()


