(defun is_even (x)
  (if (= (mod x 2) 0)
    x
    0
  )
)

(defun gen_fib (first second max)
  (setq x (+ first second))
  (if (< x max)
    (cons x (gen_fib second x (- max 1)))
  )
)

(apply '+ (mapcar 'is_even (gen_fib 1 1 4000000)))

;; added comment to test TEdit editor
