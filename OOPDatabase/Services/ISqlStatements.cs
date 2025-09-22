using System.Collections.Generic;

namespace OOPDatabase.Services
{
    internal interface ISqlStatements
    {
        List<object> GetAllRecords();
        object GetById(int id);
        object AddNewRecord(object newBook);
        object DeleteRecord(int id);
        object UpdateRecord(int id, object updateBook);
    }
}
