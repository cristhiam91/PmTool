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
    
    public partial class Users
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Users()
        {
            this.DataCenters = new HashSet<DataCenters>();
            this.Factories = new HashSet<Factories>();
            this.Labs = new HashSet<Labs>();
            this.Offices = new HashSet<Offices>();
            this.OtherProjects = new HashSet<OtherProjects>();
        }
    
        public int User_id { get; set; }
        public Nullable<bool> Status { get; set; }
        public string User_name { get; set; }
        public Nullable<int> User_type { get; set; }
        public string User_password { get; set; }
        public string User_phone { get; set; }
        public string User_email { get; set; }
        public Nullable<int> User_age { get; set; }
        public string User_secure_question_1 { get; set; }
        public string User_secure_question_2 { get; set; }
        public string User_secure_question_3 { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DataCenters> DataCenters { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Factories> Factories { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Labs> Labs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Offices> Offices { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OtherProjects> OtherProjects { get; set; }
        public virtual UserTypes UserTypes { get; set; }
    }
}