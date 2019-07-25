
component {

	public string function formatStringToSlug(String url) {
		
		// Get String from arguments.
		this.str = arguments.url;

		// Break/Strip down the string till we're left with no spaces
		// and special characters. Repalce each space with a dash (-).

		this.str = replace(this.str,"'", "", "all");

		this.str = trim(
			ReReplaceNoCase(this.str, "<[^>]*>", "", "ALL")
		);

		this.str = replaceList(
			this.str, 
			"À,Á,Â,Ã,Ä,Å,Æ,È,É,Ê,Ë,Ì,Í,Î,Ï,Ð,Ñ,Ò,Ó,Ô,Õ,Ö,Ø,Ù,Ú,Û,Ü,Ý,à,á,â,ã,ä,å,æ,è,é,ê,ë,ì,í,î,ï,ñ,ò,ó,ô,õ,ö,ø,ù,ú,û,ü,ý,&nbsp;,&amp;", 
			"A,A,A,A,A,A,AE,E,E,E,E,I,I,I,I,D,N,O,O,O,O,O,0,U,U,U,U,Y,a,a,a,a,a,a,ae,e,e,e,e,i,i,i,i,n,o,o,o,o,o,0,u,u,u,u,y, , "
		);

		this.str = trim(reReplace(
			this.str, 
			"[[:punct:]]"," ","all"
		));

		this.str = reReplace(
			this.str, "[[:space:]]+","!","all"
		);

		this.str = reReplace(
			this.str, 
			"[^a-zA-Z0-9!]", "", "ALL"
		);
		
		this.str = trim(reReplace(
			this.str, "!+", '-', "all"
		));

		return LCase(this.str);
	}
}
