using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace CrmApi.Migrations
{
    public partial class TEST_PRODUCT_PRICES : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Users",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7200),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3730));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Users",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7070),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3600));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "UserMails",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7950),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(4570));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "UserMails",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7820),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(4330));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3290),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(9780));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3160),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(9650));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketStates",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4020),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(480));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketStates",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3900),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(360));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tickets",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6090),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2640));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tickets",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5900),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2510));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tasks",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6520),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3050));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tasks",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6440),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2970));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "OrderTlmkClients",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2340),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8870));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "OrderTlmkClients",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2260),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8790));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "InterestedCourses",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2090),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8620));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "InterestedCourses",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1860),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8540));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Customers",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1070),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(7730));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Customers",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 901, DateTimeKind.Local).AddTicks(2650),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 568, DateTimeKind.Local).AddTicks(4670));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "CustomerComments",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1690),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8370));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "CustomerComments",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1580),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8270));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4700),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1210));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4580),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1030));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Actions",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6350),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2880));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Actions",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6270),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2800));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionResults",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5360),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1870));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionResults",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5230),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1750));

            migrationBuilder.CreateTable(
                name: "ProductAmount",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    CategoryUrl = table.Column<string>(nullable: true),
                    Amount = table.Column<float>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductAmount", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductCountryFacultyModifier",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    CountryCode = table.Column<string>(nullable: true),
                    CategoryUrl = table.Column<string>(nullable: true),
                    Value = table.Column<float>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductCountryFacultyModifier", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductCountryModifier",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    CountryCode = table.Column<string>(nullable: true),
                    CategoryUrl = table.Column<string>(nullable: true),
                    Value = table.Column<float>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductCountryModifier", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductCouponDiscountCountryModifier",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    CountryCode = table.Column<string>(nullable: true),
                    CategoryUrl = table.Column<string>(nullable: true),
                    Value = table.Column<float>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductCouponDiscountCountryModifier", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductCouponDiscountFacultyStudyModifier",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    FacultyUrl = table.Column<string>(nullable: true),
                    CategoryUrl = table.Column<string>(nullable: true),
                    Value = table.Column<float>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductCouponDiscountFacultyStudyModifier", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductFacultyStudyModifier",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    FacultyUrl = table.Column<string>(nullable: true),
                    CategoryUrl = table.Column<string>(nullable: true),
                    Value = table.Column<float>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductFacultyStudyModifier", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductInterestCountryModifier",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    CountryCode = table.Column<string>(nullable: true),
                    Value = table.Column<float>(nullable: false),
                    Around = table.Column<float>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductInterestCountryModifier", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductMasterPrice",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    CountryCode = table.Column<string>(nullable: true),
                    CategoryUrl = table.Column<string>(nullable: true),
                    FacultyUrl = table.Column<string>(nullable: true),
                    IdProductAmount = table.Column<int>(nullable: false),
                    TotalAmount = table.Column<float>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductMasterPrice", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProductScholarshipCountryModifier",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreationDate = table.Column<DateTime>(nullable: false),
                    ModificationDate = table.Column<DateTime>(nullable: false),
                    IsDeleted = table.Column<bool>(nullable: false),
                    CountryCode = table.Column<string>(nullable: true),
                    CategoryUrl = table.Column<string>(nullable: true),
                    Value = table.Column<float>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductScholarshipCountryModifier", x => x.Id);
                });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1540), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1540) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(2840), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(2840) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(2880), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(2880) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(2890), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(2890) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(250), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(250) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(940), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(940) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(960), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(970) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(970), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(970) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(980), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(980) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 6,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(980), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(990) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 7,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(990), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(990) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 8,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1000), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1000) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 9,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1000), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1000) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 10,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1010), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1010) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 11,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1010), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1020) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 12,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1020), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1020) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 13,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1030), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1030) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 14,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1030), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1030) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 15,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1040), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1040) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 16,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1050), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(1050) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(6470), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(6480) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(7310), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(7310) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(7330), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(7330) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(7340), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(7340) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 920, DateTimeKind.Local).AddTicks(3140), new DateTime(2019, 11, 22, 10, 8, 40, 920, DateTimeKind.Local).AddTicks(3520) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 920, DateTimeKind.Local).AddTicks(4310), new DateTime(2019, 11, 22, 10, 8, 40, 920, DateTimeKind.Local).AddTicks(4320) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 920, DateTimeKind.Local).AddTicks(4340), new DateTime(2019, 11, 22, 10, 8, 40, 920, DateTimeKind.Local).AddTicks(4340) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9330), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9330) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9700), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9710) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9730), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9730) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9740), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9740) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9740), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(9750) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8020), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8020) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8750), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8750) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8770), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8770) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8780), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8780) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8780), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8780) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 6,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8790), new DateTime(2019, 11, 22, 10, 8, 40, 921, DateTimeKind.Local).AddTicks(8790) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 923, DateTimeKind.Local).AddTicks(150), new DateTime(2019, 11, 22, 10, 8, 40, 923, DateTimeKind.Local).AddTicks(160) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 923, DateTimeKind.Local).AddTicks(200), new DateTime(2019, 11, 22, 10, 8, 40, 923, DateTimeKind.Local).AddTicks(200) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 923, DateTimeKind.Local).AddTicks(210), new DateTime(2019, 11, 22, 10, 8, 40, 923, DateTimeKind.Local).AddTicks(210) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 923, DateTimeKind.Local).AddTicks(220), new DateTime(2019, 11, 22, 10, 8, 40, 923, DateTimeKind.Local).AddTicks(220) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(6190), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(6570) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(8610), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(8620) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(8670), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(8670) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(8670), new DateTime(2019, 11, 22, 10, 8, 40, 922, DateTimeKind.Local).AddTicks(8680) });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ProductAmount");

            migrationBuilder.DropTable(
                name: "ProductCountryFacultyModifier");

            migrationBuilder.DropTable(
                name: "ProductCountryModifier");

            migrationBuilder.DropTable(
                name: "ProductCouponDiscountCountryModifier");

            migrationBuilder.DropTable(
                name: "ProductCouponDiscountFacultyStudyModifier");

            migrationBuilder.DropTable(
                name: "ProductFacultyStudyModifier");

            migrationBuilder.DropTable(
                name: "ProductInterestCountryModifier");

            migrationBuilder.DropTable(
                name: "ProductMasterPrice");

            migrationBuilder.DropTable(
                name: "ProductScholarshipCountryModifier");

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Users",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3730),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7200));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Users",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3600),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7070));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "UserMails",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(4570),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7950));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "UserMails",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(4330),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7820));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(9780),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3290));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(9650),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3160));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketStates",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(480),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4020));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketStates",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(360),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3900));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tickets",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2640),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6090));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tickets",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2510),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5900));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tasks",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(3050),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6520));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tasks",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2970),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6440));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "OrderTlmkClients",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8870),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2340));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "OrderTlmkClients",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8790),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2260));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "InterestedCourses",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8620),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2090));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "InterestedCourses",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8540),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1860));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Customers",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(7730),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1070));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Customers",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 568, DateTimeKind.Local).AddTicks(4670),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 901, DateTimeKind.Local).AddTicks(2650));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "CustomerComments",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8370),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1690));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "CustomerComments",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 586, DateTimeKind.Local).AddTicks(8270),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1580));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1210),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4700));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1030),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4580));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Actions",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2880),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6350));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Actions",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(2800),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6270));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionResults",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1870),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5360));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionResults",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 7, 14, 54, 5, 587, DateTimeKind.Local).AddTicks(1750),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5230));

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
        }
    }
}
