# causaltab

A peek into a row of an XL file ...

	<table:table-row table:style-name="ro1">
	
		<table:table-cell
			table:style-name="ce2" 
			table:formula="of:=RAND()" 
				office:value-type="float" 
				office:value="0.866951008399388" 
					calcext:value-type="float">
			<text:p>0.87</text:p>
		</table:table-cell>

		<table:table-cell 
			table:style-name="ce2" 
			table:formula="of:=RAND()" 
				office:value-type="float" 
				office:value="0.480552099084865" 
					calcext:value-type="float">
			<text:p>0.48</text:p>
		</table:table-cell>

		<table:table-cell 
			table:style-name="ce2" 
			table:formula="of:=[.B2]+[.A2]" 
				office:value-type="float" 
				office:value="1.34750310748425" 
					calcext:value-type="float">
			<text:p>1.35</text:p>
		</table:table-cell>
		
		<table:table-cell table:number-columns-repeated="1021"/>
		
	</table:table-row>
