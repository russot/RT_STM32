# -*- coding: cp437 -*-
#!python
"""Seiral test script"""


import os 
import socket 
import time 
import string
import threading
import random
import Queue
import serial
import struct 
import usb.core
import usb.util
import array




class Serial_writer(threading.Thread):
	def __init__(self,serial,serial_in):
		threading.Thread.__init__(self)
		self.serial = serial
		self.serial_in = serial_in
		self.send_flag = False

	def send(self):
		threading.Timer(0.05,self.send).start()
		self.send_flag = True


	def run(self):

		print "write start..\n", self.serial
		count =0
		self.serial.write("adc:swt:R")
		time.sleep(0.01)
		print "swt:R"
		time.sleep(0.1)
		self.serial.write("adc:pga:R:64")
		time.sleep(0.1)
	#	print "pga: R=64"
	#	self.serial.write("adc:pga:A:2")
	#	time.sleep(0.1)
	#	print "pga: A=2"
	#	os.system("pause")
	#	self.serial.write("adc:pga:A:4")
	#	time.sleep(0.1)
	#	print "pga: A=4"
	#	os.system("pause")
	#	self.serial.write("adc:pga:A:8")
	#	time.sleep(0.1)
	#	print "pga: A=8"
	#	os.system("pause")
	#	self.serial.write("adc:pga:A:16")
	#	time.sleep(0.1)
	#	print "pga: A=16"
	#	os.system("pause")
	#	self.serial.write("adc:pga:A:32")
	#	time.sleep(0.1)
	#	print "pga: A=32"
	#	os.system("pause")
	#	self.serial.write("adc:pga:A:64")
	#	time.sleep(0.1)
	#	print "pga: A=64"
	#	os.system("pause")
	#	self.serial.write("adc:pga:A:128")
	#	time.sleep(0.1)
	#	print "pga: A=128"
	#	os.system("pause")
	#	self.serial.write("adc:pga:A:2")
	#	time.sleep(0.1)
	#	print "pga: A=2"
	#	os.system("pause")
		self.serial.write("adc:pga:A:2")
		time.sleep(0.1)
		print "pga: A=2"
		#os.system("pause")
		self.serial.write("adc:cfg:manual:Y")
		time.sleep(0.01)
		self.serial.write("adc:cfg:interval:8000")
		time.sleep(0.01)
		self.serial.write("adc:cfg:channel:0") #channel_3 is PT1000_Vout
		time.sleep(0.01)
		self.serial.write("adc:run:")
		os.system("pause")
		time.sleep(330.01)
		while True:
			self.serial.write("adc:stop:")
			time.sleep(35.1)
#			self.serial.write("motor:auto:Y\0")
#			time.sleep(1.001)
#			self.serial.write("motor:setup:90\0")
#			time.sleep(1.001)
#			self.serial.write("console:set:usb\0")
#			time.sleep(1.001)
#			self.serial.write("motor:move:x>\0")
#			time.sleep(10.1)
					
				

				
			
class Serial_reader(threading.Thread):
	def __init__(self,serial):
		threading.Thread.__init__(self)
		self.serial = serial
		self.count = 0

	def get_usb_data(self):
		try:
			raw_ = self.serial.read(size=64)
			raw_bytes = ''
			for x in raw_:
				raw_bytes +=chr(x)
			#self.output(raw_bytes)
			#print raw_bytes
			#if raw_bytes.startswith('0x:'):
			datas = struct.unpack('30H', str(raw_bytes)[4:64])
			out = '0x::'
			for data in datas:
				out += '%04x'%data
			print >> self.logfile,out


			self.count +=1
		except Exception,e:
			print e
			pass
	def run(self):
		print "read start..\n", self.serial
		begin = time.time()
		out = ''
		self.logfile= file("log.txt","w")
		while True:
			self.get_usb_data()
			#out = ''
			#try:
			#	for byte__ in self.serial.read(size=64):
			#		out += chr(byte__)
			#
			##	out =out.join(byte__)
			#	count +=1
			#	print "%d"%count, out
			#except:
			#	pass
			if self.count == 8000:
				break
		print "%d records runs for %d seconds"% (self.count, time.time() - begin)
		#print "%d 运行了%d秒 "% (self.count, time.time() - begin)

		

def run_():

	try:
		dev = usb.core.find(idVendor=0x0483, idProduct=0x5750)
	
	# was it found?
		if dev is None:
			raise ValueError('Device not found')
	
		# set the active configuration. With no arguments, the first
		# configuration will be the active one
		dev.set_configuration()
	
	# get an endpoint instance
		cfg = dev.get_active_configuration()
		intf = cfg[(0,0)]
	
		ep_out = usb.util.find_descriptor(
			intf,
			# match the first OUT endpoint
			custom_match =lambda e: usb.util.endpoint_direction(e.bEndpointAddress) == usb.util.ENDPOINT_OUT)
		ep_in = usb.util.find_descriptor(
			intf,
			# match the first OUT endpoint
			custom_match =lambda e: usb.util.endpoint_direction(e.bEndpointAddress) == usb.util.ENDPOINT_IN)
		dir(ep_in)


	except: 
		print "open ep_out error...,now quit"
		return 

# write the data
	print 'test begin.....\n'
	#com = serial.Serial(4)
	#~ com2 = serial.Serial(0)
	#com.baudrate = 115200
	#~ com2.baudrate = 115200

	#t1 = Serial_read(serial=com)
	t2 = Serial_reader(serial=ep_in)
	t3 = Serial_writer(serial=ep_out,serial_in =ep_in )
	t2.start()
	t3.start()
	time.sleep(3)
	##t2.start()
				#	
	
if __name__=='__main__':
	run_()
