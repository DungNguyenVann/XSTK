#Vidu8
thoigian=faithful$eruptions
thoigian
buocnhay=seq(1.5,5.5,by=0.5)
buocnhay

thoigian.chia=cut(thoigian, buocnhay,right = FALSE, include.lowest = T)

thoigian.chia

thoigianchia.tanso=table(thoigian.chia)
thoigianchia.tichluy=cumsum(thoigianchia.tanso)

thoigianchia.tansotuongdoi=prop.table(table(thoigian.chia))
thoigianchia.tansotuongdoitichluy=cumsum(prop.table(table(thoigian.chia)))
cbind(thoigianchia.tanso)
cbind(thoigianchia.tanso,thoigianchia.tichluy)


#Vidu9

sogiotruycap=c(0:8,10)
sogiotruycap

songuoitruycap=c(37,51,49,39,75,26,39,2,6,1)
songuoitruycap

Internet=rep(sogiotruycap,songuoitruycap)
Internet

bppts=table(Internet);bppts

bpptstl=cumsum(bppts);bpptstl
cbind(sogiotruycap,bppts,bpptstl)


#bai iv.12

bai3=read.csv("SoLieu.csv",header = T)
bai3
attach(bai3)
names(bai3)
table(GioiTinh)
table(GioiTinh,KhuVuc)

chia.t=cut(Tuoi,breaks =seq(20,80,by=10), include.lowest= T, right =T)

chia.t
cumsum(prop.table(table(chia.t)))*100

chia.tn=cut(ThuNhap,breaks = seq(20,100,by=20), include.lowest = T,right = T)
table(chia.tn)

chia.tn

table(chia.t,chia.tn)


#vidu10
kh=c("Cong Nhan", "Nong Dan","Thuong Nhan","Tri Thuc")
ts=c(35,45,15,10)
z=rep(kh,ts)
z

pie(table(z))
#hoac la

pie(ts,labels = kh)

barplot(table(z))
barplot(table(z), horiz = F)
barplot(table(z), horiz = T)
barplot(table(z), horiz = T,col = rainbow(4))
barplot(ts, horiz = T,col = rainbow(4),names=kh)

#vidu ve bieu do pareto

tanso=c(12,29,18,3,34,4)
names(tanso)=c("Weather","Overslept","Alarm Failure","Time Change","Traffic","Other")

bang1=data.frame(tanso)
bang1

tanso

library(qcc)

pareto.chart(tanso,col= rainbow(6))

tanso