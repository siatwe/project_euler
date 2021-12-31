;;; multiples_of_3_or_5.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 Simon Attila Weis
;;
;; Author: Simon Attila Weis <https://github.com/siatwe>
;; Maintainer: Simon Attila Weis <me@siatwe.dev>
;; Created: December 31, 2021
;; Modified: December 31, 2021
;; Version: 0.0.1
;; Keywords: Symbol’s value as variable is void: finder-known-keywords
;; Homepage: https://github.com/siatwe/multiples_of_3_or_5
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;;
;;  Find the sum of all the multiples of 3 or 5 below 1000.
;;
;;; Code:

(defun multiples-of-3-or-5 (n)
  (setq iteration 1)
  (setq sum 0)
  (while (< iteration n)
    (if (eq 0 (% iteration 3))
        (setq sum (+ iteration sum))
      (if (eq 0 (% iteration 5))
          (setq sum (+ iteration sum))))
    (setq iteration (1+ iteration)))
  sum)

(multiples-of-3-or-5 1000)


(provide 'multiples_of_3_or_5)
;;; multiples_of_3_or_5.el ends here
