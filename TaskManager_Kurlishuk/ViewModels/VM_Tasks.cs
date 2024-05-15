using System;
using System.Collections.Generic;
using System.Text;
using TaskManager_Kurlishuk.Classes;
using TaskManager_Kurlishuk.Models;
using System.Collections.ObjectModel;
using TaskManager_Kurlishuk.Context;
using System.Linq;
using System.Security.Policy;

namespace TaskManager_Kurlishuk.ViewModels
{
    public class VM_Tasks : Notification
    {
        public TasksContext tasksContext = new TasksContext();
        public ObservableCollection<Tasks> Tasks {  get; set; }
        public VM_Tasks() =>
            Tasks = new ObservableCollection<Tasks>(tasksContext.Tasks.OrderBy(x => x.Done));
        public RealyCommand OnAddTask
        {
            get
            {
                return new RealyCommand(obj =>
                {
                    Tasks NewTask = new Tasks()
                    {
                        DateExecute = DateTime.Now
                    };
                    Tasks.Add(NewTask);
                    tasksContext.Tasks.Add(NewTask);
                    tasksContext.SaveChanges();
                }); 
            }
        }
    }
}
