(defun CaesarCipher()
	
	(let ((first-test "Bugs Bunny"))
	(setf first-test (string-downcase first-test))
	(princ first-test)
	(terpri)
	(let ((shift-a 7)) 
	(Encrypt first-test shift-a))) ;calls encrypt
	
)

(defun Encrypt(test-first shift-a)


	(setf test-first (map 'string (lambda (i) ;anonymous mapping function i = letter in string
	(if (and (>= (char-code i) 97) (<= (char-code i) 122)) ;check if its lowercase (between 97 and 122)
	(code-char (+ 97 (mod (+ (- (char-code i) 97) shift-a) 26))) i)) test-first)) ;modify and set string. 
	(princ test-first)
	(Decrypt test-first shift-a) ;call decrypt
	
	
)

(defun Decrypt(encrypt-test shift-b)

	(setf encrypt-test (map 'string (lambda (j)
	(if (and (>= (char-code j) 97) (<= (char-code j) 122))
	(code-char (+ 97 (mod (- (- (char-code j) 97) shift-b) 26))) j)) encrypt-test)) ;changed to subtraction instead of addition
	(terpri)
	(princ encrypt-test)
	(Solve encrypt-test 1 0) ;call solve with 3 parameters
	

)

(defun Solve(solve-test shift-c shift-d)

	(terpri)
	(setf solve-test (map 'string (lambda (k)
	(if (and (>= (char-code k) 97) (<= (char-code k) 122))
	(code-char (+ 97 (mod (+ (- (char-code k) 97) shift-c) 26))) k)) solve-test)) 
	(princ solve-test)
	(setf shift-d (+ shift-d 1)) ;increase temp value each time until 26
	(when (< shift-d 26) ;check if reached 26
	(Solve solve-test shift-c shift-d)) ;recursively call itself

)

(CaesarCipher) ; calls original function
