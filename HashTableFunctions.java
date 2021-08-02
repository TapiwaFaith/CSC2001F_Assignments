public class HashTableFunctions
{
	// hash function weights
	// 9 integers, each in the range 0-5 to act as weights for the characters in the keys
	int [] weights = {2, 1, 0, 2, 1, 0, 4, 1, 2};
	// ADD YOUR WEIGHTS INSTEAD OF 1s

	// returns True if the hash table contains string s
	// return False if the hash table does not contain string s
   
	public boolean find ( String s, int h, int hashTableSize, String [] hashTableArray )
	{
		int initialValue = h;
		while(! hashTableArray[h].equals (""))
		{
			if (hashTableArray[h].equals (s))
			{
				return true;
			}
			
			else
			{
				h = (h + 1) % hashTableSize;
				if (h == initialValue)
				{
					return false;
				}
			}
		}
		return false;
	}
}
