(define (domain shopbot))
	(:requirements :adl)

	(:types location item bot)

	(:predicates
		(aisle ?x - location)
		(shelf ?x - location)
		(checkout ?x - location)
		(weighing-scale ?x - location)
		(at ?obj - (either item bot) ?x - location)
		(holding ?bot - bot ?obj - item)
		(needs-weighing ?item - item)
		(weighed ?item - item)
		(checked-oot ?item - item)
	)
	
	; ShopBot can move between 2 connected aisle cells.
	(:action MOVE
		:parameters (?bot - bot ?from - location ?to - location)
		:precondition (and (at ?bot ?from) (aisle ?to))
		:effect (and (at ?bot ?to) (not (at ?bot ?from)))
	)

	;ShopBot can pick up an object.
	(:action PICKUP
		:parameters (?bot - bot ?item - item ?loc - location)
		:precomndition (and (at ?bot ?loc) (at ?item ?loc) (not (holding ?bot ?			item)))
		:effect (and (holding ?bot ?item) (not (at (?item ?loc)))
	)

	;ShopBot can drop an object.
	(:action DROP
		:parameters (?bot - bot ?item - item ?loc - location)
		:precondition (holding ?bot ?item)
		:effect (and (not (holding ?bot ?item)) (at ?item ?loc))
	)

	;ShopBot can weigh a shopping item.
	(:action WEIGH
		:parametrs (?bot - bot ?item - item  ?scale - location)
		:precondition (and (holding ?bot ?item) (needs-weighing ?item) (at ?bot ?		scale))
		:effect (and (weighed ?item) (not (needs-weighing ?item)))
	)

	;ShopBot can check out a shopping item.
	(:action CHECKOUT
		:parameters (?bot - bot ?item - item ?checkout - location)
		:precondition (and (at ?item ?checkout) (weighed ?item) (not (holding ?			bot ?item)))
		:effect (checked-out ?item)
	)
)