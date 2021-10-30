Agar ye input hua:
```
2 2
3 1 5 4
5 1 2 8 9 3
0 1
1 3
```
to first loop me: <br>
```master``` = ```{1, 5, 4, 1, 2, 8, 9, 3}``` <br>
```findex``` = ```{0,3}``` <br>
### Reason
* sabse pahle master zero length ka hai
* findex me wo index append ho raha hai jaha se agla loop shuru hone wala hai
* hamlog input ke second line ke pahle character ko dekh ke vector ka size badha rahe hain aur uss line ke array ko usme daal rahe hain
* hamlog pichla 2 step har line ke liye karenge jisme arrays diye hue hain
* phir neeche wale section me jaha se kya print karna hai wo shuru hua hai, waha pahle array ka index aur phir element ka index diya hua hai
* findex me har array kaha se shuru hua hai master me, uska index hai, jo array jaha se shuru hua hai usi index ko zero maan ke print kar denge, jo bhi print karna hai

