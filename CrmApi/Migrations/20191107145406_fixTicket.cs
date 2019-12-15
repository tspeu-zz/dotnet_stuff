using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace CrmApi.Migrations
{
    public partial class fixTicket : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Tickets_Customers_CustomerId1",
                table: "Tickets");

            migrationBuilder.DropIndex(
                name: "IX_Tickets_CustomerId",
                table: "Tickets");

            migrationBuilder.DropIndex(
                name: "IX_Tickets_CustomerId1",
                table: "Tickets");

            migrationBuilder.DropColumn(
                name: "CustomerId1",
                table: "Tickets");

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Users",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3730),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(760));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Users",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3600),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(620));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "UserMails",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(4570),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(1520));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "UserMails",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(4330),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(1390));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(9780),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7110));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(9650),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6980));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketStates",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(480),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7930));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketStates",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(360),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7810));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tickets",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2640),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9520));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tickets",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2510),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9430));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tasks",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3050),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(20));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tasks",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2970),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9940));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "OrderTlmkClients",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8870),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6170));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "OrderTlmkClients",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8790),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6010));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "InterestedCourses",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8620),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5850));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "InterestedCourses",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8540),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5760));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Customers",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(7730),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5050));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Customers",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 568, DateTimeKind.Local).AddTicks(4670),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 130, DateTimeKind.Local).AddTicks(7530));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "CustomerComments",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8370),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5580));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "CustomerComments",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8270),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5490));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1210),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(8610));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1030),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(8490));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Actions",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2880),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9840));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Actions",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2800),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9690));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionResults",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1870),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9340));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionResults",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1750),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9220));

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(6150), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(6150) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(7650), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(7660) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(7690), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(7690) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(7700), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(7700) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4880), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4880) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5560), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5560) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5580), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5580) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5590), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5590) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5590), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5600) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 6,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5600), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5600) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 7,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5610), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5610) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 8,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5610), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5610) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 9,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5620), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5620) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 10,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5630), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5630) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 11,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5630), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5630) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 12,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5640), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5640) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 13,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5640), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5650) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 14,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5650), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5650) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 15,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5660), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5660) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 16,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5660), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(5660) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(1750), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(1750) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(2160), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(2160) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(2170), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(2170) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(2180), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(2180) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(9310), new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(9700) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 588, DateTimeKind.Local).AddTicks(470), new DateTime(2019, 11, 7, 14, 54, 5, 588, DateTimeKind.Local).AddTicks(480) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 588, DateTimeKind.Local).AddTicks(500), new DateTime(2019, 11, 7, 14, 54, 5, 588, DateTimeKind.Local).AddTicks(510) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3980), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3990) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4350), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4350) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4370), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4370) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4380), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4380) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4390), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(4390) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(2720), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(2720) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3420), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3420) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3450), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3450) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3450), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3450) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3460), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3460) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 6,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3460), new DateTime(2019, 11, 7, 14, 54, 5, 589, DateTimeKind.Local).AddTicks(3470) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(4740), new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(4740) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(4780), new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(4780) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(4790), new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(4790) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(4790), new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(4800) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(820), new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(1220) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(3200), new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(3210) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(3260), new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(3260) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(3270), new DateTime(2019, 11, 7, 14, 54, 5, 590, DateTimeKind.Local).AddTicks(3270) });

            migrationBuilder.CreateIndex(
                name: "IX_Tickets_CustomerId",
                table: "Tickets",
                column: "CustomerId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Tickets_CustomerId",
                table: "Tickets");

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Users",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(760),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3730));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Users",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(620),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3600));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "UserMails",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(1520),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(4570));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "UserMails",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(1390),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(4330));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7110),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(9780));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6980),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(9650));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketStates",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7930),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(480));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketStates",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(7810),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(360));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tickets",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9520),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2640));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tickets",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9430),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2510));

            migrationBuilder.AddColumn<int>(
                name: "CustomerId1",
                table: "Tickets",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tasks",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(20),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3050));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tasks",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9940),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2970));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "OrderTlmkClients",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6170),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8870));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "OrderTlmkClients",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(6010),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8790));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "InterestedCourses",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5850),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8620));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "InterestedCourses",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5760),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8540));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Customers",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5050),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(7730));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Customers",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 130, DateTimeKind.Local).AddTicks(7530),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 568, DateTimeKind.Local).AddTicks(4670));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "CustomerComments",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5580),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8370));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "CustomerComments",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(5490),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8270));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(8610),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1210));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(8490),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1030));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Actions",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9840),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2880));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Actions",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9690),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2800));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionResults",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9340),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1870));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionResults",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 13, 14, 26, 148, DateTimeKind.Local).AddTicks(9220),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1750));

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(5370), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(5370) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6930), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6930) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6970), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6970) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6970), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(6970) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4030), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4030) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4750), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4750) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4770), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4780) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4780), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4780) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4790), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4790) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 6,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4790), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4790) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 7,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4800), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4800) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 8,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4800), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4810) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 9,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4810), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4810) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 10,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4820), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4820) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 11,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4820), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4820) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 12,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4830), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4830) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 13,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4840), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4840) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 14,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4840), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4840) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 15,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4850), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4850) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 16,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4850), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(4860) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9210), new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9220) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9630), new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9630) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9650), new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9650) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9650), new DateTime(2019, 11, 7, 13, 14, 26, 150, DateTimeKind.Local).AddTicks(9650) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(6510), new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(6880) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(7650), new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(7660) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(7680), new DateTime(2019, 11, 7, 13, 14, 26, 149, DateTimeKind.Local).AddTicks(7680) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(2780), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(2780) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3190), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3190) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3210), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3210) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3220), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3220) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3220), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(3230) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(930), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(930) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1890), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1900) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1930), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1930) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1940), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1940) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1940), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1940) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 6,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1950), new DateTime(2019, 11, 7, 13, 14, 26, 151, DateTimeKind.Local).AddTicks(1950) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(4980), new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(4980) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5160), new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5160) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5170), new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5180) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5180), new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(5180) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(140), new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(500) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2650), new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2660) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2710), new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2710) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2720), new DateTime(2019, 11, 7, 13, 14, 26, 152, DateTimeKind.Local).AddTicks(2720) });

            migrationBuilder.CreateIndex(
                name: "IX_Tickets_CustomerId",
                table: "Tickets",
                column: "CustomerId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Tickets_CustomerId1",
                table: "Tickets",
                column: "CustomerId1");

            migrationBuilder.AddForeignKey(
                name: "FK_Tickets_Customers_CustomerId1",
                table: "Tickets",
                column: "CustomerId1",
                principalTable: "Customers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
