component  output="false"
{
	public string function generateMatrix()
	 output="false"
	{
		var local.initialArray =[1,4,7,2,5,8,3,6,9];
    	var local.row=[];
    	var local.myMatrix2DArray=[];
    	var local.arrayIndex=1;
		for( element in initialArray ){
			if( arrayIndex mod 3 == 0 )
			{				
				row.append( element );
				myMatrix2DArray.append( row );				
				row=[];
				arrayIndex=1;
			}
			else
			{
				row.append( element );
				arrayIndex++;
			}
		}
		
		return myMatrix2DArray;
	}

}