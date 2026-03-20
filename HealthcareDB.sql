{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red167\green0\blue95;\red255\green255\blue255;\red24\green25\blue27;
\red22\green79\blue199;\red0\green0\blue0;\red46\green49\blue51;\red159\green77\blue4;\red24\green112\blue43;
}
{\*\expandedcolortbl;;\cssrgb\c72157\c2353\c44706;\cssrgb\c100000\c100000\c100000;\cssrgb\c12549\c12941\c14118;
\cssrgb\c9804\c40392\c82353;\cssrgb\c0\c0\c0;\cssrgb\c23529\c25098\c26275;\cssrgb\c69020\c37647\c0;\cssrgb\c9412\c50196\c21961;
}
\margl1440\margr1440\vieww13300\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 -- Creating the Patient Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Patient\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 PatientID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PatientName\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PatientAddress\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PatientPhone\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PatientEmail\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 PatientID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the MedicalService Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.MedicalService\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 MedicalServiceID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalServiceName\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalServiceCost\strokec4  \strokec6 NUMERIC\strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalServiceInfo\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 MedicalServiceID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the Department Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Department\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 DepartmentID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DepartmentName\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DepartmentAddress\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DepartmentPhone\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DepartmentEmail\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DepartmentLocation\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 DepartmentID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the Owner Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Owner\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 OwnerID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 OwnerName\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 OwnerAddress\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 OwnerPhone\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 OwnerEmail\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 OwnerID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the PatientAvailability Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.PatientAvailability\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 PatientAvailabilityID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PatientID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PatientStartTime\strokec4  \cf5 \strokec5 TIME\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PatientEndTime\strokec4  \cf5 \strokec5 TIME\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PatientDate\strokec4  \cf5 \strokec5 DATE\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 PatientAvailabilityID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 PatientID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.Patient\cf7 \strokec7 (\cf4 \strokec6 PatientID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the Doctor Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Doctor\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 DoctorID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DepartmentID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DoctorName\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DoctorAddress\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DoctorPhone\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DoctorEmail\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 DoctorID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 DepartmentID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.Department\cf7 \strokec7 (\cf4 \strokec6 DepartmentID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the DoctorAvailability Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.DoctorAvailability\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 DoctorAvailabilityID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DoctorID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DoctorStartTime\strokec4  \cf5 \strokec5 TIME\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DoctorEndTime\strokec4  \cf5 \strokec5 TIME\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DoctorDate\strokec4  \cf5 \strokec5 DATE\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 DoctorAvailabilityID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 DoctorID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.Doctor\cf7 \strokec7 (\cf4 \strokec6 DoctorID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ; \cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the Appointment Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Appointment\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 AppointmentID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalServiceID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 , \cb1 \
\cb3   \strokec6 PatientAvailabilityID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 , \cb1 \
\cb3   \strokec6 DoctorAvailabilityID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 AppointmentDate\strokec4  \cf5 \strokec5 DATE\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 AppointmentTime\strokec4  \cf5 \strokec5 TIME\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 AppointmentID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 MedicalServiceID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.MedicalService\cf7 \strokec7 (\cf4 \strokec6 MedicalServiceID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 PatientAvailabilityID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.PatientAvailability\cf7 \strokec7 (\cf4 \strokec6 PatientAvailabilityID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 DoctorAvailabilityID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.DoctorAvailability\cf7 \strokec7 (\cf4 \strokec6 DoctorAvailabilityID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the Payment Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Payment\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 PaymentID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 AppointmentID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 AmountCharged\strokec4  \strokec6 NUMERIC\strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 AmountPaid\strokec4  \strokec6 NUMERIC\strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PaymentDate\strokec4  \cf5 \strokec5 DATE\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PaymentStatus\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 PaymentID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 AppointmentID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.Appointment\cf7 \strokec7 (\cf4 \strokec6 AppointmentID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the Staff Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Staff\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 StaffID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DepartmentID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 StaffName\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 StaffAddress\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 StaffPhone\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 StaffEmail\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 StaffTitle\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 StaffID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 DepartmentID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.Department\cf7 \strokec7 (\cf4 \strokec6 DepartmentID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the Prescription Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Prescription\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 PrescriptionID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 AppointmentID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 DateIssued\strokec4  \cf5 \strokec5 DATE\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 Diagnosis\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 Notes\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 Medication\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 PrescriptionID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 AppointmentID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.Appointment\cf7 \strokec7 (\cf4 \strokec6 AppointmentID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the MedicalCenter Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.MedicalCenter\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 MedicalCenterID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 OwnerID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalCenterName\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalCenterType\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalCenterAddress\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalCenterPhone\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalCenterEmail\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 MedicalCenterID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 OwnerID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.Owner\cf7 \strokec7 (\cf4 \strokec6 OwnerID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Creating the Pharmacy Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 OR\cf4 \strokec4  \cf5 \strokec5 REPLACE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec6 HealthcareDB.Pharmacy\strokec4  \cf7 \strokec7 (\cf4 \cb1 \strokec4 \
\cb3   \strokec6 PharmacyID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 MedicalCenterID\strokec4  \cf5 \strokec5 INT64\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PharmacyName\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PharmacyAddress\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PharmacyPhone\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \strokec6 PharmacyEmail\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 PRIMARY\cf4 \strokec4  \cf5 \strokec5 KEY\cf7 \strokec7 (\cf4 \strokec6 PharmacyID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 FOREIGN\cf4 \strokec4  \cf5 \strokec5 KEY\cf4 \strokec4  \cf7 \strokec7 (\cf4 \strokec6 MedicalCenterID\cf7 \strokec7 )\cf4 \strokec4  \cf5 \strokec5 REFERENCES\cf4 \strokec4  \strokec6 HealthcareDB.MedicalCenter\cf7 \strokec7 (\cf4 \strokec6 MedicalCenterID\cf7 \strokec7 )\cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 enforced\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Patient Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Patient\strokec4  \cf7 \strokec7 (\cf4 \strokec6 PatientID\strokec4 , \strokec6 PatientName\strokec4 , \strokec6 PatientAddress\strokec4 , \strokec6 PatientPhone\strokec4 , \strokec6 PatientEmail\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \strokec4  \cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Sarah Jones'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '45 Maple St, New York'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-345-475-8342'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'sarah.jones@gmail.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Michael Lin'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '10 Walnut Ave, Philadelphia'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-546-483-1238'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'michael.lin@gmail.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Priya Gupta'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '221 Cherry Rd, Princeton'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-545-343-2323'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'priya.gupta@gmail.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Daniel Connors'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '52 Pine Ln, Gettysburg'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-232-546-8659'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'daniel.connors@gmail.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Emily Rivera'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '89 Birch Blvd, Boston'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-414-582-9934'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'emily.rivera@gmail.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into MedicalService Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.MedicalService\strokec4  \cf7 \strokec7 (\cf4 \strokec6 MedicalServiceID\strokec4 , \strokec6 MedicalServiceName\strokec4 , \strokec6 MedicalServiceCost\strokec4 , \strokec6 MedicalServiceInfo\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'General Checkup'\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 75.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Routine health examination including vitals, basic lab tests, and doctor consultation.'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Blood Test'\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 50.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Comprehensive blood panel including CBC, cholesterol, and glucose levels.'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'X-Ray Imaging'\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 120.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Radiographic imaging service for bones and chest to diagnose fractures or infections.'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'MRI Scan'\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 500.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Magnetic Resonance Imaging for detailed internal body scans.'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Vaccination'\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 30.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Routine immunizations and vaccines for adults and children.'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Department Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Department\strokec4  \cf7 \strokec7 (\cf4 \strokec6 DepartmentID\strokec4 , \strokec6 DepartmentName\strokec4 , \strokec6 DepartmentAddress\strokec4 , \strokec6 DepartmentPhone\strokec4 , \strokec6 DepartmentEmail\strokec4 , \strokec6 DepartmentLocation\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Cardiology'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '123 Heart Lane, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0101'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'cardiology@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Building A, Floor 2, Room 210'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Pediatrics'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '456 Child St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0102'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'pediatrics@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Building B, Floor 1, Room 105'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Radiology'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '789 Imaging Ave, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0103'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'radiology@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Building C, Floor 3, Room 310'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Neurology'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '321 Brain Blvd, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0104'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'neurology@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Building A, Floor 4, Room 410'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Orthopedics'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '654 Bone Rd, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0105'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'orthopedics@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Building B, Floor 2, Room 220'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Owner Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Owner\strokec4  \cf7 \strokec7 (\cf4 \strokec6 OwnerID\strokec4 , \strokec6 OwnerName\strokec4 , \strokec6 OwnerAddress\strokec4 , \strokec6 OwnerPhone\strokec4 , \strokec6 OwnerEmail\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Jonathan Smith'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '12 Oakwood Ave, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0501'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'jonathan.smith@example.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Rebecca Lee'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '45 Maple St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0502'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'rebecca.lee@example.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Anthony Davis'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '78 Pine Rd, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0503'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'anthony.davis@example.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Melissa Brown'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '90 Cedar Lane, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0504'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'melissa.brown@example.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Christopher Wilson'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '101 Birch Blvd, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0505'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'christopher.wilson@example.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into PatientAvailability Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.PatientAvailability\strokec4  \cf7 \strokec7 (\cf4 \strokec6 PatientAvailabilityID\strokec4 , \strokec6 PatientID\strokec4 , \strokec6 PatientStartTime\strokec4 , \strokec6 PatientEndTime\strokec4 , \strokec6 PatientDate\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '09:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '10:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-20'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '11:30:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '12:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-21'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '14:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '15:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-22'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '10:15:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '11:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-23'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '13:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '14:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-24'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Doctor Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Doctor\strokec4  \cf7 \strokec7 (\cf4 \strokec6 DoctorID\strokec4 , \strokec6 DepartmentID\strokec4 , \strokec6 DoctorName\strokec4 , \strokec6 DoctorAddress\strokec4 , \strokec6 DoctorPhone\strokec4 , \strokec6 DoctorEmail\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Dr. Alice Morgan'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '123 Heart Lane, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0111'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'alice.morgan@healthcare.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Dr. Brian Kim'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '456 Child St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0112'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'brian.kim@healthcare.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Dr. Carol Nguyen'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '789 Imaging Ave, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0113'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'carol.nguyen@healthcare.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Dr. David Patel'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '321 Brain Blvd, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0114'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'david.patel@healthcare.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Dr. Emma Rodriguez'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '654 Bone Rd, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0115'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'emma.rodriguez@healthcare.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into DoctorAvailability Table. \cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.DoctorAvailability\strokec4  \cf7 \strokec7 (\cf4 \strokec6 DoctorAvailabilityID\strokec4 , \strokec6 DoctorID\strokec4 , \strokec6 DoctorStartTime\strokec4 , \strokec6 DoctorEndTime\strokec4 , \strokec6 DoctorDate\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '09:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '12:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-20'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '10:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '13:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-21'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '13:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '17:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-22'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '08:30:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '12:30:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-23'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '14:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '18:00:00'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-24'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Appointment Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Appointment\strokec4  \cf7 \strokec7 (\cf4 \strokec6 AppointmentID\strokec4 , \strokec6 MedicalServiceID\strokec4 , \strokec6 PatientAvailabilityID\strokec4 , \strokec6 DoctorAvailabilityID\strokec4 , \strokec6 AppointmentDate\strokec4 , \strokec6 AppointmentTime\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-20'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '09:30:00'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-21'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '10:30:00'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-22'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '14:30:00'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-23'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '09:00:00'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-24'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '15:00:00'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Payment Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Payment\strokec4  \cf7 \strokec7 (\cf4 \strokec6 PaymentID\strokec4 , \strokec6 AppointmentID\strokec4 , \strokec6 AmountCharged\strokec4 , \strokec6 AmountPaid\strokec4 , \strokec6 PaymentDate\strokec4 , \strokec6 PaymentStatus\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 75.00\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 75.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-20'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Paid'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 50.00\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 50.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-21'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Paid'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 120.00\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 100.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-22'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Partial'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 500.00\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 0.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-23'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Pending'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 30.00\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 30.00\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-24'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Paid'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Staff Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Staff\strokec4  \cf7 \strokec7 (\cf4 \strokec6 StaffID\strokec4 , \strokec6 DepartmentID\strokec4 , \strokec6 StaffName\strokec4 , \strokec6 StaffAddress\strokec4 , \strokec6 StaffPhone\strokec4 , \strokec6 StaffEmail\strokec4 , \strokec6 StaffTitle\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Laura Benson'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '123 Heart Lane, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0201'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'laura.benson@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Nurse'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Kevin Harris'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '456 Child St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0202'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'kevin.harris@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Receptionist'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Monica Lee'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '789 Imaging Ave, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0203'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'monica.lee@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Technician'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'James Thompson'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '321 Brain Blvd, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0204'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'james.thompson@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Nurse'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Angela Rivera'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '654 Bone Rd, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0205'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'angela.rivera@healthcare.com'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Receptionist'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Prescription Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Prescription\strokec4  \cf7 \strokec7 (\cf4 \strokec6 PrescriptionID\strokec4 , \strokec6 AppointmentID\strokec4 , \strokec6 DateIssued\strokec4 , \strokec6 Diagnosis\strokec4 , \strokec6 Notes\strokec4 , \strokec6 Medication\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-20'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Hypertension'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Monitor blood pressure, reduce sodium intake'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Lisinopril 10mg daily'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-21'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Anemia'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Increase iron-rich foods, follow-up in 2 weeks'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Ferrous sulfate 325mg daily'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-22'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Sprained Ankle'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Rest, ice, compression, elevation'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Ibuprofen 400mg as needed'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-23'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Migraine'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Avoid triggers, maintain hydration'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Sumatriptan 50mg as needed'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '2025-11-24'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Seasonal Flu'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Rest and stay hydrated, monitor symptoms'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Oseltamivir 75mg twice daily'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into MedicalCenter Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.MedicalCenter\strokec4  \cf7 \strokec7 (\cf4 \strokec6 MedicalCenterID\strokec4 , \strokec6 OwnerID\strokec4 , \strokec6 MedicalCenterName\strokec4 , \strokec6 MedicalCenterType\strokec4 , \strokec6 MedicalCenterAddress\strokec4 , \strokec6 MedicalCenterPhone\strokec4 , \strokec6 MedicalCenterEmail\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Springfield General Hospital'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Hospital'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '100 Main St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0301'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'info@springfieldhospital.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Downtown Pediatric Clinic'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Clinic'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '200 Elm St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0302'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'contact@downtownclinic.org'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Radiology Imaging Center'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Diagnostic Center'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '300 Oak St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0303'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'admin@radiologycenter.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'NeuroHealth Institute'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Specialty Center'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '400 Pine St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0304'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'support@neurohealth.org'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Orthopedic Care Center'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Clinic'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '500 Cedar St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0305'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'office@orthocareclinic.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\cf2 \cb3 \strokec2 -- Inserting sample data into Pharmacy Table.\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec6 HealthcareDB.Pharmacy\strokec4  \cf7 \strokec7 (\cf4 \strokec6 PharmacyID\strokec4 , \strokec6 MedicalCenterID\strokec4 , \strokec6 PharmacyName\strokec4 , \strokec6 PharmacyAddress\strokec4 , \strokec6 PharmacyPhone\strokec4 , \strokec6 PharmacyEmail\cf7 \strokec7 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 VALUES\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 1\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Springfield General Pharmacy'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '100 Main St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0401'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'pharmacy@springfieldhospital.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 2\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Downtown Pediatric Pharmacy'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '200 Elm St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0402'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'pharmacy@downtownclinic.org'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 3\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Radiology Care Pharmacy'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '300 Oak St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0403'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'pharmacy@radiologycenter.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 4\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'NeuroHealth Pharmacy'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '400 Pine St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0404'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'pharmacy@neurohealth.org'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ,\cb1 \
\cf7 \cb3 \strokec7 (\cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf8 \cb3 \strokec8 5\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'Orthopedic Care Pharmacy'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '500 Cedar St, Springfield, IL 62704'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 '+1-217-555-0405'\cf4 \cb3 \strokec4 , \cf9 \cb3 \strokec9 'pharmacy@orthocareclinic.com'\cf7 \cb3 \strokec7 )\cf4 \strokec4 ;\cb1 \
\
\
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \
\
\
\
\
}