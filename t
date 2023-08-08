
[1mFrom:[0m /home/bricebasty/Code/codewars/consecutive_integers.rb:9 Object#solution:

     [1;34m3[0m: [32mdef[0m [1;34msolution[0m(list)
     [1;34m4[0m:   list.map.with_index [32mdo[0m |e, i|
     [1;34m5[0m:     [32mif[0m list[i + [1;34m1[0m] == ( e + [1;34m1[0m ) && list[i + [1;34m2[0m] == ( e + [1;34m2[0m )
     [1;34m6[0m:       e = [31m[1;31m"[0m[31m#{list[i]}[0m[31m-#{list[i+2]}[0m[31m[1;31m"[0m[31m[0m
     [1;34m7[0m:       list.delete_at(i + [1;34m1[0m)
     [1;34m8[0m:       list.delete_at(i + [1;34m2[0m)
 =>  [1;34m9[0m:       binding.pry
    [1;34m10[0m:     [32melse[0m
    [1;34m11[0m:       e
    [1;34m12[0m:     [32mend[0m
    [1;34m13[0m:   [32mend[0m
    [1;34m14[0m:   list.join([31m[1;31m"[0m[31m,[1;31m"[0m[31m[0m)
    [1;34m15[0m: [32mend[0m

