using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace CrmApi.Migrations
{
    public partial class initial2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Users",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(5929),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7200));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Users",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(5692),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7070));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "UserMails",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(7174),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7950));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "UserMails",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(6841),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7820));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(1738),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3290));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(1500),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3160));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketStates",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(2301),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4020));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketStates",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(2068),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3900));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tickets",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(4259),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6090));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tickets",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(4013),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5900));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tasks",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(5353),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6520));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tasks",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(5138),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6440));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "OrderTlmkClients",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(879),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2340));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "OrderTlmkClients",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(669),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2260));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "InterestedCourses",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(247),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2090));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "InterestedCourses",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(21),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1860));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Customers",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 279, DateTimeKind.Local).AddTicks(8165),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1070));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Customers",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 269, DateTimeKind.Local).AddTicks(6820),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 901, DateTimeKind.Local).AddTicks(2650));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "CustomerComments",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 279, DateTimeKind.Local).AddTicks(9582),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1690));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "CustomerComments",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 279, DateTimeKind.Local).AddTicks(9344),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1580));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(3054),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4700));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionTypes",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(2778),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4580));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Actions",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(4910),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6350));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Actions",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(4690),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6270));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionResults",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(3668),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5360));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionResults",
                nullable: false,
                defaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(3397),
                oldClrType: typeof(DateTime),
                oldType: "datetime2",
                oldDefaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5230));

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(3329), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(3333) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(6766), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(6773) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(6949), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(6954) });

            migrationBuilder.UpdateData(
                table: "ActionResults",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(6967), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(6971) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(212), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(216) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1864), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1868) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1907), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1911) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1923), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1927) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1940), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1943) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 6,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1955), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1959) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 7,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1971), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1975) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 8,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1987), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(1991) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 9,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2004), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2008) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 10,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2020), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2024) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 11,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2036), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2040) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 12,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2053), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2057) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 13,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2069), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2073) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 14,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2085), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2089) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 15,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2101), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2105) });

            migrationBuilder.UpdateData(
                table: "ActionTypes",
                keyColumn: "Id",
                keyValue: 16,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2117), new DateTime(2019, 12, 15, 17, 7, 11, 285, DateTimeKind.Local).AddTicks(2121) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(1524), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(1550) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(2473), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(2478) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(2505), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(2508) });

            migrationBuilder.UpdateData(
                table: "CustomerComments",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(2520), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(2524) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 281, DateTimeKind.Local).AddTicks(7899), new DateTime(2019, 12, 15, 17, 7, 11, 281, DateTimeKind.Local).AddTicks(8757) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 282, DateTimeKind.Local).AddTicks(468), new DateTime(2019, 12, 15, 17, 7, 11, 282, DateTimeKind.Local).AddTicks(487) });

            migrationBuilder.UpdateData(
                table: "Customers",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 282, DateTimeKind.Local).AddTicks(531), new DateTime(2019, 12, 15, 17, 7, 11, 282, DateTimeKind.Local).AddTicks(535) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(7546), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(7550) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(8563), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(8570) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(8666), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(8673) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(8693), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(8697) });

            migrationBuilder.UpdateData(
                table: "TicketStates",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(8710), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(8714) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(3847), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(3851) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5520), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5524) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5564), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5567) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5580), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5583) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 5,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5595), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5599) });

            migrationBuilder.UpdateData(
                table: "TicketTypes",
                keyColumn: "Id",
                keyValue: 6,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5613), new DateTime(2019, 12, 15, 17, 7, 11, 284, DateTimeKind.Local).AddTicks(5616) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 288, DateTimeKind.Local).AddTicks(2899), new DateTime(2019, 12, 15, 17, 7, 11, 288, DateTimeKind.Local).AddTicks(2932) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 288, DateTimeKind.Local).AddTicks(3053), new DateTime(2019, 12, 15, 17, 7, 11, 288, DateTimeKind.Local).AddTicks(3065) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 288, DateTimeKind.Local).AddTicks(3093), new DateTime(2019, 12, 15, 17, 7, 11, 288, DateTimeKind.Local).AddTicks(3101) });

            migrationBuilder.UpdateData(
                table: "UserMails",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 288, DateTimeKind.Local).AddTicks(3126), new DateTime(2019, 12, 15, 17, 7, 11, 288, DateTimeKind.Local).AddTicks(3134) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 286, DateTimeKind.Local).AddTicks(8585), new DateTime(2019, 12, 15, 17, 7, 11, 286, DateTimeKind.Local).AddTicks(9915) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 287, DateTimeKind.Local).AddTicks(7297), new DateTime(2019, 12, 15, 17, 7, 11, 287, DateTimeKind.Local).AddTicks(7334) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 287, DateTimeKind.Local).AddTicks(7454), new DateTime(2019, 12, 15, 17, 7, 11, 287, DateTimeKind.Local).AddTicks(7462) });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: 4,
                columns: new[] { "CreationDate", "ModificationDate" },
                values: new object[] { new DateTime(2019, 12, 15, 17, 7, 11, 287, DateTimeKind.Local).AddTicks(7486), new DateTime(2019, 12, 15, 17, 7, 11, 287, DateTimeKind.Local).AddTicks(7492) });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Users",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7200),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(5929));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Users",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7070),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(5692));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "UserMails",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7950),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(7174));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "UserMails",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(7820),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(6841));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3290),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(1738));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3160),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(1500));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "TicketStates",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4020),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(2301));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "TicketStates",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(3900),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(2068));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tickets",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6090),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(4259));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tickets",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5900),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(4013));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Tasks",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6520),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(5353));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Tasks",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6440),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(5138));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "OrderTlmkClients",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2340),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(879));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "OrderTlmkClients",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2260),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(669));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "InterestedCourses",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(2090),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(247));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "InterestedCourses",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1860),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(21));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Customers",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1070),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 279, DateTimeKind.Local).AddTicks(8165));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Customers",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 901, DateTimeKind.Local).AddTicks(2650),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 269, DateTimeKind.Local).AddTicks(6820));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "CustomerComments",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1690),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 279, DateTimeKind.Local).AddTicks(9582));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "CustomerComments",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(1580),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 279, DateTimeKind.Local).AddTicks(9344));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4700),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(3054));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionTypes",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(4580),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(2778));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "Actions",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6350),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(4910));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "Actions",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(6270),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(4690));

            migrationBuilder.AlterColumn<DateTime>(
                name: "ModificationDate",
                table: "ActionResults",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5360),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(3668));

            migrationBuilder.AlterColumn<DateTime>(
                name: "CreationDate",
                table: "ActionResults",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(2019, 11, 22, 10, 8, 40, 919, DateTimeKind.Local).AddTicks(5230),
                oldClrType: typeof(DateTime),
                oldDefaultValue: new DateTime(2019, 12, 15, 17, 7, 11, 280, DateTimeKind.Local).AddTicks(3397));

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
    }
}
