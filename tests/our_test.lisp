(setf e1 (make-estado :pontos 0 :pecas-por-colocar (list 'j 'o 'z 'i 'o 's 't 'l) :pecas-colocadas (list 'i) :tabuleiro (cria-tabuleiro)))
(setf e1 (make-estado :pontos 0 :pecas-por-colocar (list 'i 'i 'i 'i 'i 'i 'i 'i 'i 'i 'i 'i 'i 'i ) :pecas-colocadas (list 'i) :tabuleiro (cria-tabuleiro)))
(setf i 0)
(loop
	(when (estado-final-p e1) (return t))
	(setf accoes (accoes e1))
    (cond ((= (mod i 10) 0) (setf e1 (resultado e1 (first accoes))))
          ((= (mod i 10) 1) (setf e1 (resultado e1 (first (cdr accoes)))))
          ((= (mod i 10) 2) (setf e1 (resultado e1 (first (cdr (cdr accoes))))))
          ((= (mod i 10) 3) (setf e1 (resultado e1 (first (cdr (cdr (cdr accoes)))))))
          ((= (mod i 10) 4) (setf e1 (resultado e1 (first (cdr (cdr (cdr (cdr accoes))))))))
          ((= (mod i 10) 5) (setf e1 (resultado e1 (first (cdr (cdr (cdr (cdr (cdr accoes)))))))))
          ((= (mod i 10) 6) (setf e1 (resultado e1 (first (cdr (cdr (cdr (cdr (cdr (cdr accoes))))))))))
          ((= (mod i 10) 7) (setf e1 (resultado e1 (first (cdr (cdr (cdr (cdr (cdr (cdr (cdr accoes)))))))))))
          ((= (mod i 10) 8) (setf e1 (resultado e1 (first (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr accoes))))))))))))
          ((= (mod i 10) 9) (setf e1 (resultado e1 (first (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr accoes))))))))))))))
    (desenha-estado e1)
	(setf i (incf i)))

(print (qualidade e1))

(desenha-estado e1)
(setf accoes (accoes e1))
(setf e2 (resultado e1 (first (cdr (cdr accoes)))))
(setf accoes (accoes e2))
(setf e3 (resultado e2 (first (cdr accoes))))
(desenha-estado e2)
(desenha-estado e3)
