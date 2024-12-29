(define (problem hanoi-one-disk)
  (:domain hanoi)
  (:objects
    disk1 - disk
    peg1 peg2 - peg
  )
  (:init
    (on disk1 peg1)       ; Disk1 starts on peg1
    (clear peg2)          ; Peg2 is initially clear
    (disk disk1)          ; Disk1 exists
    (peg peg1) (peg peg2) ; Peg1 and Peg2 exist
  )
  (:goal
    (and
      (on disk1 peg2)     ; Disk1 is on peg2
    )
  )
)