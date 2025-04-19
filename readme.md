This is a simple program which basically shifts elements from index=0 to index=length-1 in an array until index 0 has the minimum value element

eg.  input:  [3,2,1,5,4]
     output: [1,5,4,3,2]

    explanation:
         min element = 1 in this array
      1st iteration:
         [2,1,5,4,3]
      
      2nd interation:
         [1,5,4,3,2]

      Since the 1st element is now the min value. So this is the output

PS: this problem is taken from my existing GO repo here https://github.com/ManVTish/GoLang_codes/blob/master/rotatearray/rotate.go