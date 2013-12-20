#!/usr/bin/perl


open(file,"wordlist");

@words = <file>;
print @words;

foreach (@words)
{
	chomp($_);
	system("curl -A \"Mozilla\" \"http://translate.google.com/translate_tts?tl=en&q=".$_."\" > ".$_.".mp3");
	
}
