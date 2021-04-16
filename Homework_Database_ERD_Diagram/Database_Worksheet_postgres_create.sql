CREATE TABLE "Employee_info" (
	"Employee_id" integer NOT NULL,
	"Employee_name" TEXT NOT NULL,
	"Employee_email" TEXT NOT NULL,
	"Employee_modul" TEXT NOT NULL,
	CONSTRAINT "Employee_info_pk" PRIMARY KEY ("Employee_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "User_Login/Register_Modul" (
	"User_id" integer NOT NULL,
	"User_name" TEXT NOT NULL,
	"User_email" TEXT NOT NULL,
	"Employee_modul" TEXT NOT NULL,
	"User_account_number" integer NOT NULL,
	CONSTRAINT "User_Login/Register_Modul_pk" PRIMARY KEY ("User_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "User_Bank_Operations_Modul copy" (
	"Employee_modul" TEXT NOT NULL,
	"User_account_number" integer NOT NULL,
	"User_balance" integer NOT NULL,
	"Withdraw_amont" FLOAT NOT NULL,
	"Insert_amont" FLOAT NOT NULL,
	"Transfer_amont" FLOAT NOT NULL,
	CONSTRAINT "User_Bank_Operations_Modul copy_pk" PRIMARY KEY ("User_account_number")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Officer_Bank_Operations_Modul" (
	"Bank_officer_id" integer NOT NULL,
	"Employee_modul" TEXT NOT NULL,
	"Bank_total_balance" integer NOT NULL,
	"Bank_daily_withdraw_amont" FLOAT NOT NULL,
	"Bank_daily_insert_amont" FLOAT NOT NULL,
	"Bank_daily_transfer_amont" FLOAT NOT NULL,
	CONSTRAINT "Officer_Bank_Operations_Modul_pk" PRIMARY KEY ("Bank_officer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Bank_Officer_Login/Register_Modul" (
	"Bank_officer_id" integer NOT NULL,
	"Bank_officer_name" TEXT NOT NULL,
	"Bank_officer_email" TEXT NOT NULL,
	"Employee_modul" TEXT NOT NULL,
	CONSTRAINT "Bank_Officer_Login/Register_Modul_pk" PRIMARY KEY ("Bank_officer_id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Employee_info" ADD CONSTRAINT "Employee_info_fk0" FOREIGN KEY ("Employee_modul") REFERENCES ""("");

ALTER TABLE "User_Login/Register_Modul" ADD CONSTRAINT "User_Login/Register_Modul_fk0" FOREIGN KEY ("Employee_modul") REFERENCES "Employee_info"("Employee_modul");

ALTER TABLE "User_Bank_Operations_Modul copy" ADD CONSTRAINT "User_Bank_Operations_Modul copy_fk0" FOREIGN KEY ("Employee_modul") REFERENCES "Employee_info"("Employee_modul");

ALTER TABLE "Officer_Bank_Operations_Modul" ADD CONSTRAINT "Officer_Bank_Operations_Modul_fk0" FOREIGN KEY ("Employee_modul") REFERENCES "Employee_info"("Employee_modul");

ALTER TABLE "Bank_Officer_Login/Register_Modul" ADD CONSTRAINT "Bank_Officer_Login/Register_Modul_fk0" FOREIGN KEY ("Employee_modul") REFERENCES "Employee_info"("Employee_modul");

