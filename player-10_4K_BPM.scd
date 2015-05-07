// 4K BPM
// Nova Deviator
// Player 1

s.waitForBoot({

	"4K_BPM_SCLOrk.scd".loadRelative;

	MIDIIn.connectAll;

	// three generators, faders 1, 2, 3 of nanoKONTROL2
	MIDIdef.cc(\midisine666,    { | val | ~sine666.set(\gain, val/127); },     0 );
	MIDIdef.cc(\midiaddCub,     { | val | ~addCub.set(\gain, val/127); },      1 );
	MIDIdef.cc(\midisine356,    { | val | ~sine365.set(\gain, val/127); },     2 );

	// last fader for sync test only
	MIDIdef.cc(\midiwhite2,     { | val | ~white2.set(\gain, val/127); },     7 );

	// effects assigned to knobs (same for all players, defined on main file)

});

