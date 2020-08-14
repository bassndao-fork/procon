#!/usr/bin/env crystal
lib C;fun strtoll(s: UInt8*,p: UInt8**,b: Int32): Int64;end
M=17
def mul(a,b)
	r=a.size.times.map{[0]*b[0].size}.to_a
	a.size.times{|y|
		b[0].size.times{|x|
			r[y][x]=b.size.times.reduce(0){|s,i|(s+a[y][i]*b[i][x])%M}
		}
	}
	r
end
A=[[1,1,1,1],[1,0,0,0],[0,1,0,0],[0,0,1,0]]
E=[[1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]]
gets.not_nil!.to_i.times{
	n=C.strtoll(gets.not_nil!,nil,10)
	a=A
	e=E
	while n>0
		e=mul(a,e) if n%2>0
		a=mul(a,a)
		n//=2
	end
	p e[-1][-1]
}
