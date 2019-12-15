using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace CrmApi.Migrations
{
    public partial class refactorCustomer : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ActionResults",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9220)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9340)),
                    IsDeleted = table.Column<bool>(nullable: false),
                    Name = table.Column<string>(nullable: false),
                    ActionTypeId = table.Column<int>(nullable: false),
                    NextActionTypeId = table.Column<int>(nullable: false),
                    NextStateId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ActionResults", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ActionTypes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(8490)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(8610)),
                    IsDeleted = table.Column<bool>(nullable: false),
                    Name = table.Column<string>(nullable: false),
                    ParentId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ActionTypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Customers",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 130, DateTimeKind.Local).AddTicks(7530)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5050)),
                    IsDeleted = table.Column<bool>(nullable: false, defaultValue: false),
                    Email = table.Column<string>(maxLength: 120, nullable: false),
                    Name = table.Column<string>(maxLength: 250, nullable: true),
                    SurName = table.Column<string>(maxLength: 400, nullable: true),
                    Phone = table.Column<string>(maxLength: 20, nullable: true),
                    Phone2 = table.Column<string>(maxLength: 20, nullable: true),
                    Country = table.Column<string>(nullable: true),
                    DNI = table.Column<string>(nullable: true),
                    IsDataValidated = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Customers", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "PriorityId",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: false),
                    Weigth = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PriorityId", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TicketStates",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7810)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7930)),
                    IsDeleted = table.Column<bool>(nullable: false),
                    Name = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TicketStates", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TicketTypes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6980)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7110)),
                    IsDeleted = table.Column<bool>(nullable: false),
                    Name = table.Column<string>(nullable: false),
                    IsAutomaticAssignation = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TicketTypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "UserMails",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(1390)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(1520)),
                    IsDeleted = table.Column<bool>(nullable: false),
                    UserId = table.Column<int>(nullable: false),
                    MailAddress = table.Column<string>(nullable: true),
                    IsDefault = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserMails", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(620)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(760)),
                    IsDeleted = table.Column<bool>(nullable: false, defaultValue: false),
                    FirstName = table.Column<string>(nullable: true),
                    LastName = table.Column<string>(nullable: true),
                    UserPrincipalName = table.Column<string>(nullable: true),
                    Phone = table.Column<string>(nullable: true),
                    CountryId = table.Column<int>(nullable: false),
                    JobTittle = table.Column<string>(nullable: true),
                    IsWorking = table.Column<bool>(nullable: false),
                    BirthDay = table.Column<DateTime>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    ActiveDirectoryId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "CustomerComments",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5490)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5580)),
                    IsDeleted = table.Column<bool>(nullable: false, defaultValue: false),
                    CustomerId = table.Column<int>(nullable: false),
                    Comment = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerComments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CustomerComments_Customers_CustomerId",
                        column: x => x.CustomerId,
                        principalTable: "Customers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "InterestedCourses",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CustomerId = table.Column<int>(nullable: false),
                    CourseId = table.Column<int>(nullable: false),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5760)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5850)),
                    IsDeleted = table.Column<bool>(nullable: false, defaultValue: false),
                    LastDate = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_InterestedCourses", x => new { x.Id, x.CourseId, x.CustomerId });
                    table.UniqueConstraint("AK_InterestedCourses_CourseId_CustomerId_Id", x => new { x.CourseId, x.CustomerId, x.Id });
                    table.ForeignKey(
                        name: "FK_InterestedCourses_Customers_CustomerId",
                        column: x => x.CustomerId,
                        principalTable: "Customers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrderTlmkClients",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NumOrder = table.Column<int>(nullable: false),
                    CustomerId = table.Column<int>(nullable: false),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6010)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6170)),
                    IsDeleted = table.Column<bool>(nullable: false, defaultValue: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrderTlmkClients", x => new { x.Id, x.NumOrder, x.CustomerId });
                    table.UniqueConstraint("AK_OrderTlmkClients_CustomerId_Id_NumOrder", x => new { x.CustomerId, x.Id, x.NumOrder });
                    table.ForeignKey(
                        name: "FK_OrderTlmkClients_Customers_CustomerId",
                        column: x => x.CustomerId,
                        principalTable: "Customers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Tickets",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9430)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9520)),
                    IsDeleted = table.Column<bool>(nullable: false, defaultValue: false),
                    RollId = table.Column<int>(nullable: false),
                    TicketTypeId = table.Column<int>(nullable: false),
                    TicketStateId = table.Column<int>(nullable: false),
                    PriorityId = table.Column<int>(nullable: false),
                    CustomerId = table.Column<int>(nullable: false),
                    CustomerId1 = table.Column<int>(nullable: true),
                    Name = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    UserId = table.Column<int>(nullable: false),
                    DueDate = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Tickets", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Tickets_Customers_CustomerId",
                        column: x => x.CustomerId,
                        principalTable: "Customers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Tickets_Customers_CustomerId1",
                        column: x => x.CustomerId1,
                        principalTable: "Customers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Actions",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9690)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9840)),
                    IsDeleted = table.Column<bool>(nullable: false),
                    TicketId = table.Column<int>(nullable: false),
                    ActionTypeId = table.Column<int>(nullable: false),
                    ActionResultId = table.Column<int>(nullable: false),
                    StartDate = table.Column<DateTime>(nullable: false),
                    EndDate = table.Column<DateTime>(nullable: false),
                    Tittle = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    WebId = table.Column<int>(nullable: false),
                    CouponId = table.Column<int>(nullable: false),
                    CourseId = table.Column<int>(nullable: false),
                    Origen = table.Column<string>(nullable: true),
                    ChangedStateTicketId = table.Column<bool>(nullable: false),
                    ProccesedDate = table.Column<DateTime>(nullable: false),
                    ChangedUserId = table.Column<bool>(nullable: false),
                    UserId = table.Column<int>(nullable: false),
                    PosponeTicketTime = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Actions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Actions_Tickets_TicketId",
                        column: x => x.TicketId,
                        principalTable: "Tickets",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Tasks",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9940)),
                    ModificationDate = table.Column<DateTime>(nullable: false, defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(20)),
                    IsDeleted = table.Column<bool>(nullable: false),
                    Tittle = table.Column<string>(nullable: true),
                    TicketId = table.Column<int>(nullable: false),
                    ActionTypeId = table.Column<int>(nullable: false),
                    DueTime = table.Column<DateTime>(nullable: false),
                    IsCompleted = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Tasks", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Tasks_Tickets_TicketId",
                        column: x => x.TicketId,
                        principalTable: "Tickets",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "ActionResults",
                columns: new[] { "Id", "ActionTypeId", "CreationDate", "IsDeleted", "ModificationDate", "Name", "NextActionTypeId", "NextStateId" },
                values: new object[,]
                {
                    { 1, 3, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(5370), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(5370), "Call NoContesta", 0, 0 },
                    { 2, 3, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6930), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6930), "Call Venta", 7, 0 },
                    { 3, 3, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6970), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6970), "Call NoInteresado", 0, 5 },
                    { 4, 3, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6970), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6970), "Call NumeroNoDisponible", 0, 0 }
                });

            migrationBuilder.InsertData(
                table: "ActionTypes",
                columns: new[] { "Id", "CreationDate", "IsDeleted", "ModificationDate", "Name", "ParentId" },
                values: new object[,]
                {
                    { 14, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4840), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4840), "Database", 0 },
                    { 11, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4820), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4820), "Ticket", 0 },
                    { 10, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4820), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4820), "Receive Mail", 12 },
                    { 9, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4810), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4810), "SendMail", 13 },
                    { 8, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4800), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4810), "Call", 13 },
                    { 7, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4800), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4800), "Venta", 13 },
                    { 6, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4790), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4790), "Formulario Contacto", 12 },
                    { 3, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4770), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4780), "ChangeStateTIcket", 11 },
                    { 4, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4780), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4780), "Dossier", 12 },
                    { 12, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4830), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4830), "Customer", 0 },
                    { 2, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4750), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4750), "Pospone ticket", 11 },
                    { 1, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4030), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4030), "ChangeAssignedUser", 11 },
                    { 15, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4850), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4850), "Comment", 13 },
                    { 16, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4850), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4860), "CreateTicket", 12 },
                    { 5, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4790), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4790), "PreMatrícula", 12 },
                    { 13, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4840), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4840), "Commertial", 0 }
                });

            migrationBuilder.InsertData(
                table: "Customers",
                columns: new[] { "Id", "Country", "CreationDate", "DNI", "Email", "IsDataValidated", "ModificationDate", "Name", "Phone", "Phone2", "SurName" },
                values: new object[] { 1, "ES", new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(6510), "00000001", "test1@email.com", false, new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(6880), "Customer Test 1", "5555501", "", "LastName 1" });

            migrationBuilder.InsertData(
                table: "Customers",
                columns: new[] { "Id", "Country", "CreationDate", "DNI", "Email", "IsDataValidated", "ModificationDate", "Name", "Phone", "Phone2", "SurName" },
                values: new object[] { 3, "ES", new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(7680), "00000003", "3test3@email.com", false, new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(7680), "Customer 3", "5555553", "0055553", "LastName 3" });

            migrationBuilder.InsertData(
                table: "Customers",
                columns: new[] { "Id", "Country", "CreationDate", "DNI", "Email", "IsDataValidated", "ModificationDate", "Name", "Phone", "Phone2", "SurName" },
                values: new object[] { 2, "ES", new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(7650), "20000002", "test2@email.com", false, new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(7660), "Customer Test 2", "", "", "Customer LastName 2" });

            migrationBuilder.InsertData(
                table: "TicketStates",
                columns: new[] { "Id", "CreationDate", "IsDeleted", "ModificationDate", "Name" },
                values: new object[,]
                {
                    { 1, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(2780), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(2780), "BACKLOG" },
                    { 2, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3190), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3190), "TODO" },
                    { 3, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3210), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3210), "WAITTING" },
                    { 4, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3220), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3220), "IN PROGRESS" },
                    { 5, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3220), false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3230), "DONE" }
                });

            migrationBuilder.InsertData(
                table: "TicketTypes",
                columns: new[] { "Id", "CreationDate", "IsAutomaticAssignation", "IsDeleted", "ModificationDate", "Name" },
                values: new object[,]
                {
                    { 6, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1950), false, false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1950), "Custom" },
                    { 5, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1940), false, false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1940), "ReturnError" },
                    { 4, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1940), false, false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1940), "Return" },
                    { 2, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1890), false, false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1900), "CancellationTrial" },
                    { 1, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(930), false, false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(930), "ContactRequest" },
                    { 3, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1930), false, false, new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1930), "Cancellation" }
                });

            migrationBuilder.InsertData(
                table: "UserMails",
                columns: new[] { "Id", "CreationDate", "IsDefault", "IsDeleted", "MailAddress", "ModificationDate", "UserId" },
                values: new object[,]
                {
                    { 3, new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5170), false, false, "3comercial3@techtitute.com", new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5180), 3 },
                    { 1, new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(4980), false, false, "comercial1@techtitute.com", new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(4980), 1 },
                    { 2, new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5160), false, false, "2comercial2@techtitute.com", new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5160), 2 },
                    { 4, new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5180), false, false, "elcomercialcuatro@techtitute.com", new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5180), 4 }
                });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "ActiveDirectoryId", "BirthDay", "CountryId", "CreationDate", "FirstName", "IsActive", "IsWorking", "JobTittle", "LastName", "ModificationDate", "Phone", "UserPrincipalName" },
                values: new object[] { 1, 0, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(140), "Comercial", true, true, "Commertial", "Uno", new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(500), "55555001", "Comercial Uno" });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "ActiveDirectoryId", "BirthDay", "CountryId", "CreationDate", "FirstName", "IsActive", "IsWorking", "JobTittle", "LastName", "ModificationDate", "Phone", "UserPrincipalName" },
                values: new object[] { 2, 0, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2650), "Sra. Comercial", true, true, "Commertial", "Dos", new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2660), "66666002", "Comercial Dos" });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "ActiveDirectoryId", "BirthDay", "CountryId", "CreationDate", "FirstName", "IsActive", "IsWorking", "JobTittle", "LastName", "ModificationDate", "Phone", "UserPrincipalName" },
                values: new object[] { 3, 0, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2710), "Dña. Comercial", true, true, "Commertial", "Tres", new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2710), "777770033", "Comercial Tres" });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "ActiveDirectoryId", "BirthDay", "CountryId", "CreationDate", "FirstName", "IsActive", "IsWorking", "JobTittle", "LastName", "ModificationDate", "Phone", "UserPrincipalName" },
                values: new object[] { 4, 0, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2720), "El Comercial", true, true, "Commertial", "Cuatro", new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2720), "888800044", "Comercial Cuatro" });

            migrationBuilder.InsertData(
                table: "CustomerComments",
                columns: new[] { "Id", "Comment", "CreationDate", "CustomerId", "ModificationDate" },
                values: new object[] { 1, "comentario de test Customer 1", new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9210), 1, new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9220) });

            migrationBuilder.InsertData(
                table: "CustomerComments",
                columns: new[] { "Id", "Comment", "CreationDate", "CustomerId", "ModificationDate" },
                values: new object[] { 3, "test otro comentario Customer 1  bla bla ... comentario", new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9650), 1, new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9650) });

            migrationBuilder.InsertData(
                table: "CustomerComments",
                columns: new[] { "Id", "Comment", "CreationDate", "CustomerId", "ModificationDate" },
                values: new object[] { 4, "mas comentarios del Customer 1  bla bla ... bla bla ....", new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9650), 1, new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9650) });

            migrationBuilder.InsertData(
                table: "CustomerComments",
                columns: new[] { "Id", "Comment", "CreationDate", "CustomerId", "ModificationDate" },
                values: new object[] { 2, "test Customer 2 comentario", new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9630), 2, new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9630) });

            migrationBuilder.CreateIndex(
                name: "IX_Actions_TicketId",
                table: "Actions",
                column: "TicketId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerComments_CustomerId",
                table: "CustomerComments",
                column: "CustomerId");

            migrationBuilder.CreateIndex(
                name: "IX_InterestedCourses_CustomerId",
                table: "InterestedCourses",
                column: "CustomerId");

            migrationBuilder.CreateIndex(
                name: "IX_Tasks_TicketId",
                table: "Tasks",
                column: "TicketId");

            migrationBuilder.CreateIndex(
                name: "IX_Tickets_CustomerId",
                table: "Tickets",
                column: "CustomerId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Tickets_CustomerId1",
                table: "Tickets",
                column: "CustomerId1");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ActionResults");

            migrationBuilder.DropTable(
                name: "Actions");

            migrationBuilder.DropTable(
                name: "ActionTypes");

            migrationBuilder.DropTable(
                name: "CustomerComments");

            migrationBuilder.DropTable(
                name: "InterestedCourses");

            migrationBuilder.DropTable(
                name: "OrderTlmkClients");

            migrationBuilder.DropTable(
                name: "PriorityId");

            migrationBuilder.DropTable(
                name: "Tasks");

            migrationBuilder.DropTable(
                name: "TicketStates");

            migrationBuilder.DropTable(
                name: "TicketTypes");

            migrationBuilder.DropTable(
                name: "UserMails");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropTable(
                name: "Tickets");

            migrationBuilder.DropTable(
                name: "Customers");
        }
    }
}
