package com.sec.android.app.screenrecorder.remote;

interface ISRService {
	boolean StartSR(in String from);
	boolean IsRunning();
	boolean StopSR(in String from);
}