//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PmTool.DATA
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProjectNames
    {
        public int Project_id { get; set; }
        public string Project_name { get; set; }
    
        public virtual DataCenters DataCenters { get; set; }
        public virtual Labs Labs { get; set; }
        public virtual OtherProjects OtherProjects { get; set; }
    }
}
