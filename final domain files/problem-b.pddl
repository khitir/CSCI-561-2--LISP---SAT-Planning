(define (problem hanoi-prob-b)
  (:domain hanoi)
  (:objects
    peg1 peg2 peg3 - peg
    disk1 disk2 - disk
  )
  (:init
    ;; Initial positions
    (on disk1 peg1)
    (on disk2 disk1)
    (clear disk2)
    (clear peg2)
    (clear peg3)

    ;; Size relationships
    (smaller disk2 disk1)
  )
  (:goal
    (and
      (on disk1 peg3)
      (on disk2 disk1)
    )
  )
)
