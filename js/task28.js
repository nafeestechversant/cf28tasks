function confirmDelete(pageID)
{
   if(window.confirm('Are you sure you want to delete this Page?'))
   {
      window.location.href = 'task28_2.cfm?From=Delete&ID='+pageID;
   }
   else
   {
      null;
   }
}