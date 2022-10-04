# Homework 2 - Scheme



1.  Write a scheme expression for each of the following arithmetic expressions
    1.  `1 + 2`
    2.  `2 * 3 + 4 * 2`
    3.  `1 - 8 / 4 + 3`
    4.  `1 + 2 + 3 + 4 + 5`
    5.  `-1 - 2 - 3 - 4`
    6.  What is, in your opinion, a benefit of prefix notation when it comes to clarity?
    7.  [optional] What is, in your opinion, a shortcoming of prefix notation when it comes to clarity?
2.  Draw box-pointer diagrams for each of the following lists. You may take clear photographs of hand-drawn diagrams
    1.  `'(1 2 3 4)`
    2.  `'(a (b c (d e)))`
    3.  `'(x (y z) (a b))`
    4.  Write all valid combinations of `car` and `cdr` that can be applied to the list in `c`.
        For example, `(car (cdr '(1 2 3)))` is valid, but `(car (car '(1 2 3)))` is not because the inner `car` results in `1`.
3.  Convert each of the following trees into a quoted list in scheme
    1.  ![img](./tree1.png)
    2.  ![img](./tree2.png)
    3.  Draw a tree of your own with at least 5 nodes, at least one node that is of depth 3, and 2 nodes with more than 1 child. You may give the nodes labels as you please.
4.  Write the following functions in scheme and provide a few test cases. Use the `display` function to format your output.
    1.  The pre-defined procedures `min` and `max` each take two arguments and return the smallest/largest of the two, or the first argument if they are both equal.
        Define `lmin` and `lmax` which apply these functions to lists of numbers.
    2.  The predefined procedure `list?` checks if the argument is a valid list. Implement your own version of it. *HINT: your procedure might get arguments that are not lists or pairs at all. You may use `pair?` in your function.*
    3.  Implement `deep-sum`, where given an arbitrarily nested list of numbers in scheme, `deep-sum` the sum of all the numbers. That is, your input list may have sublists, which may themselves have sublists and so on.
5.  Prime numbers
    Write a procedure `(nprimes k)` which returns the first `k` prime numbers. You may need to implement multiple functions to make this work. Try to make it as efficient as possible (ie, as few unnecessary computations as possible).
    Implement this problem in a separate file.
6.  Implement `merge-sort` in Scheme
7.  `(nsum L n)` takes in a list `L` and a number `n` and returns a resulting list where the `i` &rsquo;th element is the sum of the elements from position `i` to `(min (length? L) i+n)`.
    
    For example `(nsum '(2 3 12 4) 3) => '(17 19 16 4)`
    
    Implement `nsum`

