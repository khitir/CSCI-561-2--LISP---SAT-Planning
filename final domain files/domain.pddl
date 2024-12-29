(define (domain hanoi)
  (:requirements :strips :typing)
  (:types
    place
    disk peg - place
  )
  (:predicates
    (on ?disk - disk ?place - place)
    (clear ?place - place)
    (smaller ?d1 - disk ?d2 - disk)
  )

  ;; Action to move a disk onto a peg
  (:action move-to-peg
    :parameters (?disk - disk ?from - place ?to - peg)
    :precondition (and
      (on ?disk ?from)
      (clear ?disk)
      (clear ?to)
      (not (= ?from ?to))
    )
    :effect (and
      (not (on ?disk ?from))
      (on ?disk ?to)
      (clear ?from)
      (not (clear ?to))
      (clear ?disk)
    )
  )

  ;; Action to move a disk onto another disk
  (:action move-to-disk
    :parameters (?disk - disk ?from - place ?to - disk)
    :precondition (and
      (on ?disk ?from)
      (clear ?disk)
      (clear ?to)
      (not (= ?from ?to))
      (smaller ?disk ?to)
    )
    :effect (and
      (not (on ?disk ?from))
      (on ?disk ?to)
      (clear ?from)
      (not (clear ?to))
      (clear ?disk)
    )
  )
)
