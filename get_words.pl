#!/usr/bin/perl


open(file,"wordlist");

@words = <file>;
print @words;

foreach (@words)
{
	chomp($_);
	#print($_);
	print "curl -A \"Mozilla\" \"http://translate.google.com/translate_tts?tl=en&q=".$_."\" > ".$_.".mp3";
	system("curl -A \"Mozilla\" \"http://translate.google.com/translate_tts?tl=en&q=".$_."\" > ".$_.".mp3");
	
}
