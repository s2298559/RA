(define (problem supermarket-shopping)
	(:domain supermarket)

	(:objects
		; Free cells where ShopBot can move
		cell1 cell2 cell3 cell4 cell5 cell6 cell7 cell8 cell9 cell10 cell11 cell12 		cell13 cell14 cell15 cell16 cell17 cell18 cell19 cell20 - location
		
		; Aisles with sub-options for items
		aisle1 aisle2 aisle3 aisle4 - location
		left1 left2 left3 left4 right1 right2 right3 right4 - location

		; Special cells
		scaleCell checkoutCell - location

		; Items
		potato ketchup toothpaste pizza - item

		; ShopBot
		shopbot - bot
	)


	(:init
		; Define layout of the supermarket
		(aisle aisle1) (aisle aisle2) (aisle aisle3) (aisle aisle4)

		; Define the position of items
		(at potato right2) 
		(at ketchup right4) 
		(at toothpaste left3) 
		(at pizza right1) 
		(needs_weighing potato) 

		; Define weighing scale and checkout locations
		(weighing-scale scaleCell)
		(checkout checkoutCell)

		;Free cells
		(free cell1) (free cell2) (free cell3) (free cell4) (free cell5) (free			 cell6) (free cell7) (free cell8) (free cell9) (free cell10) (free cell11) 		(free cell12) (free cell13) (free cell14) (free cell15) (free cell16) (free 		cell17) (free cell18) (free cell19) (free cell20)

		; Define ShopBot's initial posisition
		(at shopbot cell20) 
	)

	(:goal
		(and
			(checked-out potato)
			(checked-out ketchup)
			(checked-out toothpaste)
			(checked-out pizza)
		)
	)
)