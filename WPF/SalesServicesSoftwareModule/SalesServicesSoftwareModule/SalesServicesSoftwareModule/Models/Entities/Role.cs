﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesServicesSoftwareModule.Models.Entities
{
    internal class Role
    {
        public int RoleId { get; set; }
        public string Title { get; set; } = null!;
    }
}