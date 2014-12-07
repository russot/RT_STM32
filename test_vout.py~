# -*- coding: cp437 -*-
#!python
"""Seiral test script"""


import socket 
import os 
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
		self.serial.write("vout:set:6000")
		print "set to 6000"
		os.system("pause")
		self.serial.write("vout:set:2000")
		print "set to 2000"
		os.system("pause")
		self.serial.write("vout:set:1000")
		print "set to 1000"
		os.system("pause")
		self.serial.write("vout:set:300")
		print "set to 300"
		os.system("pause")
		self.serial.write("vout:set:100")
		print "set to 100"
		os.system("pause")
		while True:
			self.serial.write("vout:set:6000")
			print "set to 6000"
			os.system("pause")
			self.serial.write("vout:set:2000")
			print "set to 2000"
			os.system("pause")
			self.serial.write("vout:set:1000")
			print "set to 1000"
			os.system("pause")
	#	for i in range(0,300):
	#			self.serial.write("vout:inc:200")
	#			time.sleep(0.5)
	#		time.sleep(5)
	#		for i in range(0,300):
	#			self.serial.write("vout:dec:200")
	#			time.sleep(0.5)
	#		time.sleep(5)
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


	def run(self):
		print "read start..\n", self.serial
		count = 0
		begin = time.time()
		out = ''
		while True:
			out = ''
			try:
				for byte__ in self.serial.read(size=64):
					if byte__  != 0:
						out += chr(byte__)
			
			#	out =out.join(byte__)
				count +=1
				print out,"%d"%count
			except:
				pass
			if count == 4000:
				break
		print "%d records runs for %d seconds"% (count, time.time() - begin)
		print "%d 运行了%d秒 "% (count, time.time() - begin)

		

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
