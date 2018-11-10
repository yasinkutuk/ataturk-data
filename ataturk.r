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

path <- '/media/DRIVE/Dropbox/_My_Research/Ataturk/'

ata <- data.frame(read.csv(file='/media/DRIVE/Dropbox/_My_Research/Ataturk/ataturk.csv', sep=';'))


wi <- 750 
he <- 1200  

png(paste0(path,'01ataturk.png'), width = wi, height = he)
plot(ata$turk, xlab = 'Mustafa Kemal ATATÜRK', ylab='Gazi')
dev.off()
