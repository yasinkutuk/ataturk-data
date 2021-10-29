## -*- coding: utf-8 -*-
#"""
#Created on Sat Nov 10 17:11:04 2018

#░█░░░░░░░░░░░░╔╗░░░░╔╗░░░╔╗░░░
#░░░░░░░░░░░░░░║║░░░╔╝╚╗░░║║░░░
#╔╗░╔╦══╦══╦╦═╗║║╔╦╗╠╗╔╬╗╔╣║╔╗░
#║║░║║╔╗║══╬╣╔╗╣╚╝╣║║║║║║║║╚╝╝░
#║╚═╝║╔╗╠══║║║║║╔╗╣╚╝║╚╣╚╝║╔╗╗░
#╚═╗╔╩╝╚╩══╩╩╝╚╩╝╚╩══╩═╩══╩╝╚╝░
#╔═╝╔╗░░░░░░░░░░░╔╗░░░░░░░░░░░░
#╚═╔╝╚╗░░░░░░░░░░║║░░░░░░░░░░░░
#╔═╩╗╔╝╔══╦╗╔╦══╦╣║░╔══╦══╦╗╔╗░
#║╔╗║║░║╔╗║╚╝║╔╗╠╣║░║╔═╣╔╗║╚╝║░
#║╔╗║╚╗║╚╝║║║║╔╗║║╚╦╣╚═╣╚╝║║║║░
#╚╝╚╩═╝╚═╗╠╩╩╩╝╚╩╩═╩╩══╩══╩╩╩╝░
#░░░░░░╔═╝║░░░░░░░░░░░░░░░░░░░░
#░░░░░░╚══╝░░░░░░░░░░░░░░░░░░░░


#@author: Yasin KÜTÜK
#@email:yasinkutuk@gmail.com
#"""
#


#Hamiş:Lütfen lokasyon bilgilerini kendinize göre düzeltiniz.

path <- '/media/DRIVE/Dropbox/_My_Research/Ataturk-Data/'


ata <- data.frame(read.csv(file='/media/DRIVE/Dropbox/_My_Research/Ataturk-Data/ata.csv', sep=';'))

wi <- 800
he <- 1200  

png(paste0(path,'01ataturk.png'), width = wi, height = he)
plot(ata$q3,ata$q4, xlab = 'Mustafa Kemal ATATÜRK', ylab='Gazi')
dev.off()


turkey <- data.frame(read.csv(file='/media/DRIVE/Dropbox/_My_Research/Ataturk-Data/turkey.csv', sep=';'))

wi <- 1200
he <- 800  

png(paste0(path,'02turkey.png'), width = wi, height = he)
plot(turkey$q1,turkey$q2, xlab = 'Türkiye', ylab='BW Haritasi')
dev.off()


tr <- data.frame(ata,turkey)
colnames(tr) <- c('atax','atay','trx','try')
tr$ataturk <- (ata$q3+ata$q4)/2
tr$turkiye <- (turkey$q1+turkey$q2)/2


summary(tr)
summary(lm(turkiye~ataturk, data = tr))

write.csv(tr,file='/media/DRIVE/Dropbox/_My_Research/Ataturk-Data/atatr.csv')
