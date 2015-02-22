(defun throw-die (&optional (n-sides 6))
  "Throw die with n sides"
  (+ 1 (random n-sides)))

(defun throw-dice2 (&optional (n-sides 6))
  "Throw two dice with n sides"
  (cons (throw-die n-sides) 
        (throw-die n-sides)))

(defun sum-dice2 (dice)
  "Sum of two dice"
  (+ (first dice) 
     (rest dice)))

(defun is-lucky (dice)
  "Lucky combination"
  (or (equal dice '(1 . 1))
      (equal dice '(6 . 6))))

(defun is-winner (dice)
  "Winner combination"
  (or (eql 7 (sum-dice2 dice)) 
      (eql 11 (sum-dice2 dice))))

(defun play (name &optional all-turns (score 0))
  (let ((turn (throw-dice2)))
  (format T "~:s: ~a~%" name turn)
  (cond ((is-lucky turn)
         (play name `(,all-turns ,turn) (+ (sum-dice2 turn) score)))
        ((is-winner turn)
         (format T "~:s is winner!~%" name) T)
        (T (+ (sum-dice2 turn) score)))))

(defun game (&optional (player-name1 'Player1) (player-name2 'Player2))
  (let ((score1 (play player-name1)))
    (if (numberp score1) 
      (let ((score2 (play player-name2))) 
        (if (numberp score2)
          (cond ((> score1 score2) 
                 (format T "~:s is winner!~%" player-name1))
                ((> score2 score1) 
                 (format T "~:s is winner!~%" player-name2))
                (t 
                 (format T "Drawn Game~%"))))))
   "GG WP"))