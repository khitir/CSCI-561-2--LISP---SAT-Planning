(define (domain hanoi)
  (:predicates
    (on ?disk ?peg)        ; Disk is on a peg
    (clear ?peg)           ; Peg is clear (no disk on top)
    (smaller ?disk1 ?disk2) ; Disk1 is smaller than Disk2
    (disk ?disk)           ; Disk exists
    (peg ?peg)             ; Peg exists
  )
  
  (:action move
    :parameters (?d ?from ?to)
    :precondition (and
      (on ?d ?from)       ; Disk is on the "from" peg
      (clear ?to)         ; "To" peg is clear
      (peg ?from)         ; "From" is a peg
      (peg ?to)           ; "To" is a peg
      (disk ?d)           ; Disk is valid
    )
    :effect (and
      (not (on ?d ?from)) ; Disk is no longer on the "from" peg
      (clear ?from)       ; "From" peg is now clear
      (on ?d ?to)         ; Disk is on the "to" peg
      (not (clear ?to))   ; "To" peg is no longer clear
    )
  )
)