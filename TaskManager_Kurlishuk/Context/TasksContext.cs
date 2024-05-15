using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using Microsoft.EntityFrameworkCore;
using TaskManager_Kurlishuk.Classes.Database;
using TaskManager_Kurlishuk.Models;


namespace TaskManager_Kurlishuk.Context
{
    public class TasksContext : DbContext
    {
        public DbSet<Tasks> Tasks { get; set; }
        public TasksContext()
        {
            Database.EnsureCreated();
            Tasks.Load();
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) =>
            optionsBuilder.UseSqlServer(Config.connection);
    }
}
