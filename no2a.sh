\#!/bin/bash


#a
#num1answer=$(awk -F, '/2012/ {print $1}' WA_sales_Products_2012-14.csv | 
#sort | uniq -c | sort -r  |
#awk 'FNR == 1 {s = "" ; for(i=2; i<= NF; i++) s = s $i " "; print s}')

#echo $num1answer

echo
echo "no2a"

numA=$(
awk '

BEGIN{
	FS = ","
}

{
	if($7==2012){
		qtty[$1]+=$10
	}
}

END{
	for(a in qtty){
		{print qtty[a] "," a}
	}
}' WA_sales_Products_2012-14.csv |
sort -rg |
awk -F, 'NR == 1 {print $2}'
)

echo $numA



#b

echo
echo "no2b"

numB=$(
awk -v s="$numA" '

BEGIN{
	FS = ","
}

{
	if($1==s && $7==2012){
		qtty[$4]+=$10
	}
}

END{
	for(b in qtty){
		{print qtty[b] "," b}
	}
}' WA_sales_Products_2012-14.csv |
sort -rg |
awk -F, 'NR==1,NR==3 {print $2 ","}'
)

echo $numB

#c

echo
echo "no2c"
echo "1."

awk -v a="$numB" -v s="$numA" '

BEGIN{
	FS = ","
	split(a, asplt, ",")
}

{
	if($1==s && $7==2012){
		if($4==asplt[1]){
			qttyA[$6]+=$10
		}
		if($4=="Camping Equipment"){
                	qttyB[$6]+=$10
        	}
		if($4=="Outdoor Protection"){
			qttyC[$6]+=$10 
		}
	}
}

END{
#	{print "1" asplt[1]}
	for(b in qttyA){
		{print qttyA[b] "," b}
	}
#	{print "2" asplt[2]}
#	for(c in qttyB){
#                {print qttyB[c] "," c}
#        }
#	{print "3" asplt[3]}
#	for(d in qttyC){
#                {print qttyC[d] "," d}
#        }
}
' WA_sales_Products_2012-14.csv |
sort -rg |
awk -F, 'NR==1,NR==3 {print $2}' 

echo
echo "2."

awk -v a="$numB" -v s="$numA" '

BEGIN{
        FS = ","
        split(a, asplt, ",")
}

{
        if($1==s && $7==2012){
                if($4==asplt[1]){
                        qttyA[$6]+=$10
                }
                if($4=="Camping Equipment"){
                        qttyB[$6]+=$10
                }
                if($4=="Outdoor Protection"){
                        qttyC[$6]+=$10
                }
        }
}

END{
#       {print "1" asplt[1]}
#        for(b in qttyA){
#                {print qttyA[b]  "," b}
#        }
#       {print "2" asplt[2]}
       for(c in qttyB){
                {print qttyB[c]  "," c}
        }
#       {print "3" asplt[3]}
#       for(d in qttyC){
#                {print qttyC[d]  "," d}
#        }
}
' WA_sales_Products_2012-14.csv |
sort -rg |
awk -F, 'NR==1,NR==3 {print $2}'

echo
echo "3."

awk -v a="$numB" -v s="$numA" '

BEGIN{
        FS = ","
        split(a, asplt, ",")
}

{
        if($1==s && $7==2012){
                if($4==asplt[1]){
                        qttyA[$6]+=$10
                }
                if($4=="Camping Equipment"){
                        qttyB[$6]+=$10
                }
                if($4=="Outdoor Protection"){
                        qttyC[$6]+=$10
                }
        }
}

END{
#       {print "1" asplt[1]}
#        for(b in qttyA){
#                {print qttyA[b] "," b}
#        }
#       {print "2" asplt[2]}
#       for(c in qttyB){
#                {print qttyB[c] "," c}
#        }
#       {print "3" asplt[3]}
       for(d in qttyC){
                {print qttyC[d] "," d}
        }
}
' WA_sales_Products_2012-14.csv |
sort -rg |
awk -F, 'NR==1,NR==3 {print $2}'
