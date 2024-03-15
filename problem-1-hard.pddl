(define (problem supermarket-shopping-hard)
	(:domain supermarket)

	(:objects
		; Free cells
		cell1 cell2 cell3 cell4 cell5 cell6 cell7 cell8 cell9 cell10 cell11 cell12
		cell13 cell14 cell15 cell16 cell17 cell19 cell20 - location

		; Aisles with sub-positions
		aisle1 aisle2 aisle3 aisle4 - location
		left1 left2 left3 left4 right1 right2 right3 right4 - location

		; Special cells
		scaleCell checkoutCell - location

		; Items
		iceLolly pizza potato cabbage toothpaste shampoo bread ketchup - item

		: ShopBot
		shopbot - bot
	)

	(:init
		; Define the layout of  the supermarket
		(aisle cell1) (aisle cell2) (aisle cell3) (aisle cell4)

		: Items in aisles
		(at iceLolly left1)
		(at pizza right1)
		(at cabbage left2)
		(at potato right2)
		(at toothpaste left3)
		(at shampoo right3)
		(at bread left4)
		(at ketchup right4)
	
		; Items needing weighing
		(needs-weighing cabbage)
		(needs-weighing potato)

		; Weighing scale and checkout
		(weighing-scale scaleCell)
		(checkout checkoutCell)

		; Free cells for movement
		(free cell1) (free cell2) (free cell3) (free cell4) (free cell5) (free			 cell6) (free cell7) (free cell8) (free cell9) (free cell10) (free cell11) 		(free cell12) (free cell13) (free cell14) (free cell15) (free cell16) (free 		cell17) (free cell18) (free cell19) (free cell20)

		; ShopBot's start position
		(at shopbot cell20)

	(:goal
		(and
			(checked-out iceLolly)
			(checked-out pizza)
			(checked-out potato)
			(checked-out cabbage)
			(checked-out toothpaste)
			(checked-out shampoo)
			(checked-out bread)
			(checked-out ketchup)
		)
	)
)