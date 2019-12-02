﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.18408
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace BBSDemo
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="SMDB")]
	public partial class BBSDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    partial void InsertUsers(Users instance);
    partial void UpdateUsers(Users instance);
    partial void DeleteUsers(Users instance);
    partial void InsertBBSNote(BBSNote instance);
    partial void UpdateBBSNote(BBSNote instance);
    partial void DeleteBBSNote(BBSNote instance);
    partial void InsertBBSAnswer(BBSAnswer instance);
    partial void UpdateBBSAnswer(BBSAnswer instance);
    partial void DeleteBBSAnswer(BBSAnswer instance);
    #endregion
		
		public BBSDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["SMDBConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public BBSDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public BBSDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public BBSDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public BBSDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Users> Users
		{
			get
			{
				return this.GetTable<Users>();
			}
		}
		
		public System.Data.Linq.Table<BBSNote> BBSNote
		{
			get
			{
				return this.GetTable<BBSNote>();
			}
		}
		
		public System.Data.Linq.Table<BBSAnswer> BBSAnswer
		{
			get
			{
				return this.GetTable<BBSAnswer>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Users")]
	public partial class Users : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _uID;
		
		private string _uName;
		
		private string _uPwd;
		
		private string _uRealName;
		
		private string _uSex;
		
		private System.Nullable<int> _uAge;
		
		private string _uHobby;
		
		private string _uPhone;
		
		private string _uEmail;
		
		private string _uQQ;
		
		private string _uImage;
		
		private System.Nullable<System.DateTime> _uRegTime;
		
		private EntitySet<BBSNote> _BBSNote;
		
		private EntitySet<BBSAnswer> _BBSAnswer;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnuIDChanging(int value);
    partial void OnuIDChanged();
    partial void OnuNameChanging(string value);
    partial void OnuNameChanged();
    partial void OnuPwdChanging(string value);
    partial void OnuPwdChanged();
    partial void OnuRealNameChanging(string value);
    partial void OnuRealNameChanged();
    partial void OnuSexChanging(string value);
    partial void OnuSexChanged();
    partial void OnuAgeChanging(System.Nullable<int> value);
    partial void OnuAgeChanged();
    partial void OnuHobbyChanging(string value);
    partial void OnuHobbyChanged();
    partial void OnuPhoneChanging(string value);
    partial void OnuPhoneChanged();
    partial void OnuEmailChanging(string value);
    partial void OnuEmailChanged();
    partial void OnuQQChanging(string value);
    partial void OnuQQChanged();
    partial void OnuImageChanging(string value);
    partial void OnuImageChanged();
    partial void OnuRegTimeChanging(System.Nullable<System.DateTime> value);
    partial void OnuRegTimeChanged();
    #endregion
		
		public Users()
		{
			this._BBSNote = new EntitySet<BBSNote>(new Action<BBSNote>(this.attach_BBSNote), new Action<BBSNote>(this.detach_BBSNote));
			this._BBSAnswer = new EntitySet<BBSAnswer>(new Action<BBSAnswer>(this.attach_BBSAnswer), new Action<BBSAnswer>(this.detach_BBSAnswer));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int uID
		{
			get
			{
				return this._uID;
			}
			set
			{
				if ((this._uID != value))
				{
					this.OnuIDChanging(value);
					this.SendPropertyChanging();
					this._uID = value;
					this.SendPropertyChanged("uID");
					this.OnuIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uName", DbType="VarChar(30) NOT NULL", CanBeNull=false)]
		public string uName
		{
			get
			{
				return this._uName;
			}
			set
			{
				if ((this._uName != value))
				{
					this.OnuNameChanging(value);
					this.SendPropertyChanging();
					this._uName = value;
					this.SendPropertyChanged("uName");
					this.OnuNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uPwd", DbType="VarChar(30) NOT NULL", CanBeNull=false)]
		public string uPwd
		{
			get
			{
				return this._uPwd;
			}
			set
			{
				if ((this._uPwd != value))
				{
					this.OnuPwdChanging(value);
					this.SendPropertyChanging();
					this._uPwd = value;
					this.SendPropertyChanged("uPwd");
					this.OnuPwdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uRealName", DbType="VarChar(30)")]
		public string uRealName
		{
			get
			{
				return this._uRealName;
			}
			set
			{
				if ((this._uRealName != value))
				{
					this.OnuRealNameChanging(value);
					this.SendPropertyChanging();
					this._uRealName = value;
					this.SendPropertyChanged("uRealName");
					this.OnuRealNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uSex", DbType="VarChar(2)")]
		public string uSex
		{
			get
			{
				return this._uSex;
			}
			set
			{
				if ((this._uSex != value))
				{
					this.OnuSexChanging(value);
					this.SendPropertyChanging();
					this._uSex = value;
					this.SendPropertyChanged("uSex");
					this.OnuSexChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uAge", DbType="Int")]
		public System.Nullable<int> uAge
		{
			get
			{
				return this._uAge;
			}
			set
			{
				if ((this._uAge != value))
				{
					this.OnuAgeChanging(value);
					this.SendPropertyChanging();
					this._uAge = value;
					this.SendPropertyChanged("uAge");
					this.OnuAgeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uHobby", DbType="VarChar(150)")]
		public string uHobby
		{
			get
			{
				return this._uHobby;
			}
			set
			{
				if ((this._uHobby != value))
				{
					this.OnuHobbyChanging(value);
					this.SendPropertyChanging();
					this._uHobby = value;
					this.SendPropertyChanged("uHobby");
					this.OnuHobbyChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uPhone", DbType="VarChar(20)")]
		public string uPhone
		{
			get
			{
				return this._uPhone;
			}
			set
			{
				if ((this._uPhone != value))
				{
					this.OnuPhoneChanging(value);
					this.SendPropertyChanging();
					this._uPhone = value;
					this.SendPropertyChanged("uPhone");
					this.OnuPhoneChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uEmail", DbType="VarChar(50)")]
		public string uEmail
		{
			get
			{
				return this._uEmail;
			}
			set
			{
				if ((this._uEmail != value))
				{
					this.OnuEmailChanging(value);
					this.SendPropertyChanging();
					this._uEmail = value;
					this.SendPropertyChanged("uEmail");
					this.OnuEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uQQ", DbType="VarChar(20)")]
		public string uQQ
		{
			get
			{
				return this._uQQ;
			}
			set
			{
				if ((this._uQQ != value))
				{
					this.OnuQQChanging(value);
					this.SendPropertyChanging();
					this._uQQ = value;
					this.SendPropertyChanged("uQQ");
					this.OnuQQChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uImage", DbType="VarChar(100)")]
		public string uImage
		{
			get
			{
				return this._uImage;
			}
			set
			{
				if ((this._uImage != value))
				{
					this.OnuImageChanging(value);
					this.SendPropertyChanging();
					this._uImage = value;
					this.SendPropertyChanged("uImage");
					this.OnuImageChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uRegTime", DbType="DateTime")]
		public System.Nullable<System.DateTime> uRegTime
		{
			get
			{
				return this._uRegTime;
			}
			set
			{
				if ((this._uRegTime != value))
				{
					this.OnuRegTimeChanging(value);
					this.SendPropertyChanging();
					this._uRegTime = value;
					this.SendPropertyChanged("uRegTime");
					this.OnuRegTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Users_BBSNote", Storage="_BBSNote", ThisKey="uID", OtherKey="uID")]
		public EntitySet<BBSNote> BBSNote
		{
			get
			{
				return this._BBSNote;
			}
			set
			{
				this._BBSNote.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Users_BBSAnswer", Storage="_BBSAnswer", ThisKey="uID", OtherKey="uID")]
		public EntitySet<BBSAnswer> BBSAnswer
		{
			get
			{
				return this._BBSAnswer;
			}
			set
			{
				this._BBSAnswer.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_BBSNote(BBSNote entity)
		{
			this.SendPropertyChanging();
			entity.Users = this;
		}
		
		private void detach_BBSNote(BBSNote entity)
		{
			this.SendPropertyChanging();
			entity.Users = null;
		}
		
		private void attach_BBSAnswer(BBSAnswer entity)
		{
			this.SendPropertyChanging();
			entity.Users = this;
		}
		
		private void detach_BBSAnswer(BBSAnswer entity)
		{
			this.SendPropertyChanging();
			entity.Users = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.BBSNote")]
	public partial class BBSNote : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _bnID;
		
		private int _uID;
		
		private string _bnSubject;
		
		private string _bnContent;
		
		private System.DateTime _bnAddTime;
		
		private EntitySet<BBSAnswer> _BBSAnswer;
		
		private EntityRef<Users> _Users;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnbnIDChanging(int value);
    partial void OnbnIDChanged();
    partial void OnuIDChanging(int value);
    partial void OnuIDChanged();
    partial void OnbnSubjectChanging(string value);
    partial void OnbnSubjectChanged();
    partial void OnbnContentChanging(string value);
    partial void OnbnContentChanged();
    partial void OnbnAddTimeChanging(System.DateTime value);
    partial void OnbnAddTimeChanged();
    #endregion
		
		public BBSNote()
		{
			this._BBSAnswer = new EntitySet<BBSAnswer>(new Action<BBSAnswer>(this.attach_BBSAnswer), new Action<BBSAnswer>(this.detach_BBSAnswer));
			this._Users = default(EntityRef<Users>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_bnID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int bnID
		{
			get
			{
				return this._bnID;
			}
			set
			{
				if ((this._bnID != value))
				{
					this.OnbnIDChanging(value);
					this.SendPropertyChanging();
					this._bnID = value;
					this.SendPropertyChanged("bnID");
					this.OnbnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uID", DbType="Int NOT NULL")]
		public int uID
		{
			get
			{
				return this._uID;
			}
			set
			{
				if ((this._uID != value))
				{
					if (this._Users.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnuIDChanging(value);
					this.SendPropertyChanging();
					this._uID = value;
					this.SendPropertyChanged("uID");
					this.OnuIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_bnSubject", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string bnSubject
		{
			get
			{
				return this._bnSubject;
			}
			set
			{
				if ((this._bnSubject != value))
				{
					this.OnbnSubjectChanging(value);
					this.SendPropertyChanging();
					this._bnSubject = value;
					this.SendPropertyChanged("bnSubject");
					this.OnbnSubjectChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_bnContent", DbType="Text NOT NULL", CanBeNull=false, UpdateCheck=UpdateCheck.Never)]
		public string bnContent
		{
			get
			{
				return this._bnContent;
			}
			set
			{
				if ((this._bnContent != value))
				{
					this.OnbnContentChanging(value);
					this.SendPropertyChanging();
					this._bnContent = value;
					this.SendPropertyChanged("bnContent");
					this.OnbnContentChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_bnAddTime", DbType="DateTime NOT NULL")]
		public System.DateTime bnAddTime
		{
			get
			{
				return this._bnAddTime;
			}
			set
			{
				if ((this._bnAddTime != value))
				{
					this.OnbnAddTimeChanging(value);
					this.SendPropertyChanging();
					this._bnAddTime = value;
					this.SendPropertyChanged("bnAddTime");
					this.OnbnAddTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="BBSNote_BBSAnswer", Storage="_BBSAnswer", ThisKey="bnID", OtherKey="bnID")]
		public EntitySet<BBSAnswer> BBSAnswer
		{
			get
			{
				return this._BBSAnswer;
			}
			set
			{
				this._BBSAnswer.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Users_BBSNote", Storage="_Users", ThisKey="uID", OtherKey="uID", IsForeignKey=true)]
		public Users Users
		{
			get
			{
				return this._Users.Entity;
			}
			set
			{
				Users previousValue = this._Users.Entity;
				if (((previousValue != value) 
							|| (this._Users.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Users.Entity = null;
						previousValue.BBSNote.Remove(this);
					}
					this._Users.Entity = value;
					if ((value != null))
					{
						value.BBSNote.Add(this);
						this._uID = value.uID;
					}
					else
					{
						this._uID = default(int);
					}
					this.SendPropertyChanged("Users");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_BBSAnswer(BBSAnswer entity)
		{
			this.SendPropertyChanging();
			entity.BBSNote = this;
		}
		
		private void detach_BBSAnswer(BBSAnswer entity)
		{
			this.SendPropertyChanging();
			entity.BBSNote = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.BBSAnswer")]
	public partial class BBSAnswer : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _baID;
		
		private int _uID;
		
		private int _bnID;
		
		private string _baContent;
		
		private System.DateTime _baAddTime;
		
		private EntityRef<Users> _Users;
		
		private EntityRef<BBSNote> _BBSNote;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnbaIDChanging(int value);
    partial void OnbaIDChanged();
    partial void OnuIDChanging(int value);
    partial void OnuIDChanged();
    partial void OnbnIDChanging(int value);
    partial void OnbnIDChanged();
    partial void OnbaContentChanging(string value);
    partial void OnbaContentChanged();
    partial void OnbaAddTimeChanging(System.DateTime value);
    partial void OnbaAddTimeChanged();
    #endregion
		
		public BBSAnswer()
		{
			this._Users = default(EntityRef<Users>);
			this._BBSNote = default(EntityRef<BBSNote>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_baID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int baID
		{
			get
			{
				return this._baID;
			}
			set
			{
				if ((this._baID != value))
				{
					this.OnbaIDChanging(value);
					this.SendPropertyChanging();
					this._baID = value;
					this.SendPropertyChanged("baID");
					this.OnbaIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uID", DbType="Int NOT NULL")]
		public int uID
		{
			get
			{
				return this._uID;
			}
			set
			{
				if ((this._uID != value))
				{
					if (this._Users.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnuIDChanging(value);
					this.SendPropertyChanging();
					this._uID = value;
					this.SendPropertyChanged("uID");
					this.OnuIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_bnID", DbType="Int NOT NULL")]
		public int bnID
		{
			get
			{
				return this._bnID;
			}
			set
			{
				if ((this._bnID != value))
				{
					if (this._BBSNote.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnbnIDChanging(value);
					this.SendPropertyChanging();
					this._bnID = value;
					this.SendPropertyChanged("bnID");
					this.OnbnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_baContent", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
		public string baContent
		{
			get
			{
				return this._baContent;
			}
			set
			{
				if ((this._baContent != value))
				{
					this.OnbaContentChanging(value);
					this.SendPropertyChanging();
					this._baContent = value;
					this.SendPropertyChanged("baContent");
					this.OnbaContentChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_baAddTime", DbType="DateTime NOT NULL")]
		public System.DateTime baAddTime
		{
			get
			{
				return this._baAddTime;
			}
			set
			{
				if ((this._baAddTime != value))
				{
					this.OnbaAddTimeChanging(value);
					this.SendPropertyChanging();
					this._baAddTime = value;
					this.SendPropertyChanged("baAddTime");
					this.OnbaAddTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Users_BBSAnswer", Storage="_Users", ThisKey="uID", OtherKey="uID", IsForeignKey=true)]
		public Users Users
		{
			get
			{
				return this._Users.Entity;
			}
			set
			{
				Users previousValue = this._Users.Entity;
				if (((previousValue != value) 
							|| (this._Users.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Users.Entity = null;
						previousValue.BBSAnswer.Remove(this);
					}
					this._Users.Entity = value;
					if ((value != null))
					{
						value.BBSAnswer.Add(this);
						this._uID = value.uID;
					}
					else
					{
						this._uID = default(int);
					}
					this.SendPropertyChanged("Users");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="BBSNote_BBSAnswer", Storage="_BBSNote", ThisKey="bnID", OtherKey="bnID", IsForeignKey=true)]
		public BBSNote BBSNote
		{
			get
			{
				return this._BBSNote.Entity;
			}
			set
			{
				BBSNote previousValue = this._BBSNote.Entity;
				if (((previousValue != value) 
							|| (this._BBSNote.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._BBSNote.Entity = null;
						previousValue.BBSAnswer.Remove(this);
					}
					this._BBSNote.Entity = value;
					if ((value != null))
					{
						value.BBSAnswer.Add(this);
						this._bnID = value.bnID;
					}
					else
					{
						this._bnID = default(int);
					}
					this.SendPropertyChanged("BBSNote");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
