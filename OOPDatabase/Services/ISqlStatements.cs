using System.Collections.Generic;

namespace OOPDatabase.Services
{
    internal interface ISqlStatements
    {
        List<object> GetAllRecords(string tableName);
        object GetById(int id, string table);
        object AddNewRecord(object newRecord, string tableName);
        object DeleteRecord(int id, string table);
        object UpdateRecord(int id, object updateRecord, string table);
    }
}
