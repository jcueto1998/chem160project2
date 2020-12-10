counters=c()
maxvals=c()
for (i in 1:1000) {
	cat(i)
	n=i
	counter=1
	maxval=0
	while (n!=1) {
		#cat (n, "\n")
		counter=counter+1
		if (maxval<n) {
			maxval=n
		} 
		if (n%%2==0) {
			n<-as.integer(n/2)
		} else {
			n<-as.integer(3*n+1)
		}
	} 
	counters[i] <-counter 
	maxvals[i] <-maxval
}
plot(counters)
plot(maxvals)

