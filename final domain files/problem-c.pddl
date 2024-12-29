(define (problem hanoi-prob-c)
  (:domain hanoi)
  (:objects
    peg1 peg2 peg3 - peg
    disk1 disk2 disk3 disk4 - disk
  )
  (:init
    ;; Initial positions
    (on disk1 peg1)
    (on disk2 disk1)
    (on disk3 disk2)
    (on disk4 disk3)
    
    ;; Clear statuses
    (clear disk4)
    (clear peg2)
    (clear peg3)
    
    ;; Size relationships
    (smaller disk2 disk1)
    (smaller disk3 disk1)
    (smaller disk3 disk2)
    (smaller disk4 disk1)
    (smaller disk4 disk2)
    (smaller disk4 disk3)
  )
  (:goal
    (and
      (on disk1 peg3)
      (on disk2 disk1)
      (on disk3 disk2)
      (on disk4 disk3)
    )
  )
)
