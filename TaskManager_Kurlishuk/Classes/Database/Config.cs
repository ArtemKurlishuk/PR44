using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.EntityFrameworkCore;

namespace TaskManager_Kurlishuk.Classes.Database
{
    public class Config
    {
        public static readonly string connection = "server=HAT\\HAT;" +
            "uid=sa;"+
            "pwd=Asdfg123;" +
            "database=TASK; ";
        public static readonly MySqlServerVersion version = new MySqlServerVersion(new Version(8,0,11));
    }
}
