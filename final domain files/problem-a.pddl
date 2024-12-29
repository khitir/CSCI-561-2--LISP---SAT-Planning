(define (problem hanoi-prob-a)
  (:domain hanoi)
  (:objects
    peg1 peg2 - peg
    disk1 - disk
  )
  (:init
    ;; Initial positions
    (on disk1 peg1)
    (clear disk1)
    (clear peg2)
  )
  (:goal
    (on disk1 peg2)
  )
)
