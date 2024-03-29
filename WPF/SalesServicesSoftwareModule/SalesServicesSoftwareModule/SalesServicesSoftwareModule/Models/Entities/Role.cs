﻿using System;
using System.Collections.Generic;

namespace SalesServicesSoftwareModule.Models.Entities
{
    public partial class Role
    {
        public Role()
        {
            Users = new HashSet<User>();
        }

        public int Id { get; set; }
        public string Title { get; set; } = null!;

        public virtual ICollection<User> Users { get; set; }
    }
}
