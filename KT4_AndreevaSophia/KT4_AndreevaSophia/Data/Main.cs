//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KT4_AndreevaSophia.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Main
    {
        public int Id { get; set; }
        public string Code { get; set; }
        public int IdType { get; set; }
        public string FIO { get; set; }
        public string Email { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public string Phone { get; set; }
        public string Passport { get; set; }
        public System.DateTime Birth { get; set; }
        public Nullable<System.DateTime> EnterLast { get; set; }
        public Nullable<int> IdEnter { get; set; }
        public int IdGender { get; set; }
    
        public virtual Enter Enter { get; set; }
        public virtual Gender Gender { get; set; }
        public virtual Type Type { get; set; }
    }
}
