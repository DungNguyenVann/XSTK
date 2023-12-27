#Bai1:
TienDT = scan()

sum(TienDT)


min(TienDT)
which(TienDT==min(TienDT))

max(TienDT)
which(TienDT==max(TienDT))

which(TienDT>200)

sum(TienDT>200)

sum(TienDT<=190)

sum(TienDT>=190&TienDT<=210)

mean(TienDT)
#Bai2:
save(TienDT,file="TienDt.rda")

TienDT[2]=175
TienDT

TienDT=c(TienDT,NA,201,185)

mean(na.omit(TienDT))

#Bai3:
#c1:
TT=1:8
luong=c(6,5,4,3,8,8,12,4,5)
luong

GioiTinh=c("Nam","Nu","Nam","Nu","Nu","Nam","Nam","Nu")

TotNghiep=c("K","K","TB","K","G","G","TB","TB")
Tuoi=c(22,25,23,22,22,23,22,24)
SinhVien=data.frame(TT,luong,GioiTinh,TotNghiep,Tuoi)

#c2:
subset(SinhVien,GioiTinh=="Nu")

SinhVienNam=subset(SinhVien,GioiTinh=="Nam")