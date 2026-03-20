-- Creating the Patient Table. 
CREATE OR REPLACE TABLE HealthcareDB.Patient (
  PatientID INT64 NOT NULL,
  PatientName STRING NOT NULL,
  PatientAddress STRING NOT NULL,
  PatientPhone STRING NOT NULL,
  PatientEmail STRING NOT NULL,
  PRIMARY KEY(PatientID)not enforced
);

-- Creating the MedicalService Table. 
CREATE OR REPLACE TABLE HealthcareDB.MedicalService (
  MedicalServiceID INT64 NOT NULL,
  MedicalServiceName STRING NOT NULL,
  MedicalServiceCost NUMERIC NOT NULL,
  MedicalServiceInfo STRING NOT NULL,
  PRIMARY KEY(MedicalServiceID)not enforced
);

-- Creating the Department Table. 
CREATE OR REPLACE TABLE HealthcareDB.Department (
  DepartmentID INT64 NOT NULL,
  DepartmentName STRING NOT NULL,
  DepartmentAddress STRING NOT NULL,
  DepartmentPhone STRING NOT NULL,
  DepartmentEmail STRING NOT NULL,
  DepartmentLocation STRING NOT NULL,
  PRIMARY KEY(DepartmentID)not enforced
);

-- Creating the Owner Table. 
CREATE OR REPLACE TABLE HealthcareDB.Owner (
  OwnerID INT64 NOT NULL,
  OwnerName STRING NOT NULL,
  OwnerAddress STRING NOT NULL,
  OwnerPhone STRING NOT NULL,
  OwnerEmail STRING NOT NULL,
  PRIMARY KEY(OwnerID)not enforced
);

-- Creating the PatientAvailability Table. 
CREATE OR REPLACE TABLE HealthcareDB.PatientAvailability (
  PatientAvailabilityID INT64 NOT NULL,
  PatientID INT64 NOT NULL,
  PatientStartTime TIME NOT NULL,
  PatientEndTime TIME NOT NULL,
  PatientDate DATE NOT NULL,
  PRIMARY KEY(PatientAvailabilityID)not enforced,
  FOREIGN KEY (PatientID) REFERENCES HealthcareDB.Patient(PatientID)not enforced
);

-- Creating the Doctor Table. 
CREATE OR REPLACE TABLE HealthcareDB.Doctor (
  DoctorID INT64 NOT NULL,
  DepartmentID INT64 NOT NULL,
  DoctorName STRING NOT NULL,
  DoctorAddress STRING NOT NULL,
  DoctorPhone STRING NOT NULL,
  DoctorEmail STRING NOT NULL,
  PRIMARY KEY(DoctorID)not enforced,
  FOREIGN KEY (DepartmentID) REFERENCES HealthcareDB.Department(DepartmentID)not enforced
);

-- Creating the DoctorAvailability Table.
CREATE OR REPLACE TABLE HealthcareDB.DoctorAvailability (
  DoctorAvailabilityID INT64 NOT NULL,
  DoctorID INT64 NOT NULL,
  DoctorStartTime TIME NOT NULL,
  DoctorEndTime TIME NOT NULL,
  DoctorDate DATE NOT NULL,
  PRIMARY KEY(DoctorAvailabilityID)not enforced,
  FOREIGN KEY (DoctorID) REFERENCES HealthcareDB.Doctor(DoctorID)not enforced
); 

-- Creating the Appointment Table. 
CREATE OR REPLACE TABLE HealthcareDB.Appointment (
  AppointmentID INT64 NOT NULL,
  MedicalServiceID INT64 NOT NULL, 
  PatientAvailabilityID INT64 NOT NULL, 
  DoctorAvailabilityID INT64 NOT NULL,
  AppointmentDate DATE NOT NULL,
  AppointmentTime TIME NOT NULL,
  PRIMARY KEY(AppointmentID)not enforced,
  FOREIGN KEY (MedicalServiceID) REFERENCES HealthcareDB.MedicalService(MedicalServiceID)not enforced,
  FOREIGN KEY (PatientAvailabilityID) REFERENCES HealthcareDB.PatientAvailability(PatientAvailabilityID)not enforced,
  FOREIGN KEY (DoctorAvailabilityID) REFERENCES HealthcareDB.DoctorAvailability(DoctorAvailabilityID)not enforced
);

-- Creating the Payment Table.
CREATE OR REPLACE TABLE HealthcareDB.Payment (
  PaymentID INT64 NOT NULL,
  AppointmentID INT64 NOT NULL,
  AmountCharged NUMERIC NOT NULL,
  AmountPaid NUMERIC NOT NULL,
  PaymentDate DATE NOT NULL,
  PaymentStatus STRING NOT NULL,
  PRIMARY KEY(PaymentID)not enforced,
  FOREIGN KEY (AppointmentID) REFERENCES HealthcareDB.Appointment(AppointmentID)not enforced
);

-- Creating the Staff Table.
CREATE OR REPLACE TABLE HealthcareDB.Staff (
  StaffID INT64 NOT NULL,
  DepartmentID INT64 NOT NULL,
  StaffName STRING NOT NULL,
  StaffAddress STRING NOT NULL,
  StaffPhone STRING NOT NULL,
  StaffEmail STRING NOT NULL,
  StaffTitle STRING NOT NULL,
  PRIMARY KEY(StaffID)not enforced,
  FOREIGN KEY (DepartmentID) REFERENCES HealthcareDB.Department(DepartmentID)not enforced
);

-- Creating the Prescription Table.
CREATE OR REPLACE TABLE HealthcareDB.Prescription (
  PrescriptionID INT64 NOT NULL,
  AppointmentID INT64 NOT NULL,
  DateIssued DATE NOT NULL,
  Diagnosis STRING NOT NULL,
  Notes STRING NOT NULL,
  Medication STRING NOT NULL,
  PRIMARY KEY(PrescriptionID)not enforced,
  FOREIGN KEY (AppointmentID) REFERENCES HealthcareDB.Appointment(AppointmentID)not enforced
);

-- Creating the MedicalCenter Table. 
CREATE OR REPLACE TABLE HealthcareDB.MedicalCenter (
  MedicalCenterID INT64 NOT NULL,
  OwnerID INT64 NOT NULL,
  MedicalCenterName STRING NOT NULL,
  MedicalCenterType STRING NOT NULL,
  MedicalCenterAddress STRING NOT NULL,
  MedicalCenterPhone STRING NOT NULL,
  MedicalCenterEmail STRING NOT NULL,
  PRIMARY KEY(MedicalCenterID)not enforced,
  FOREIGN KEY (OwnerID) REFERENCES HealthcareDB.Owner(OwnerID)not enforced
);

-- Creating the Pharmacy Table. 
CREATE OR REPLACE TABLE HealthcareDB.Pharmacy (
  PharmacyID INT64 NOT NULL,
  MedicalCenterID INT64 NOT NULL,
  PharmacyName STRING NOT NULL,
  PharmacyAddress STRING NOT NULL,
  PharmacyPhone STRING NOT NULL,
  PharmacyEmail STRING NOT NULL,
  PRIMARY KEY(PharmacyID)not enforced,
  FOREIGN KEY (MedicalCenterID) REFERENCES HealthcareDB.MedicalCenter(MedicalCenterID)not enforced
);

-- Inserting sample data into Patient Table. 
INSERT INTO HealthcareDB.Patient (PatientID, PatientName, PatientAddress, PatientPhone, PatientEmail)
VALUES 
(1, 'Sarah Jones', '45 Maple St, New York', '+1-345-475-8342', 'sarah.jones@gmail.com'),
(2, 'Michael Lin', '10 Walnut Ave, Philadelphia', '+1-546-483-1238', 'michael.lin@gmail.com'),
(3, 'Priya Gupta', '221 Cherry Rd, Princeton', '+1-545-343-2323', 'priya.gupta@gmail.com'),
(4, 'Daniel Connors', '52 Pine Ln, Gettysburg', '+1-232-546-8659', 'daniel.connors@gmail.com'),
(5, 'Emily Rivera', '89 Birch Blvd, Boston', '+1-414-582-9934', 'emily.rivera@gmail.com');

-- Inserting sample data into MedicalService Table. 
INSERT INTO HealthcareDB.MedicalService (MedicalServiceID, MedicalServiceName, MedicalServiceCost, MedicalServiceInfo)
VALUES
(1, 'General Checkup', 75.00, 'Routine health examination including vitals, basic lab tests, and doctor consultation.'),
(2, 'Blood Test', 50.00, 'Comprehensive blood panel including CBC, cholesterol, and glucose levels.'),
(3, 'X-Ray Imaging', 120.00, 'Radiographic imaging service for bones and chest to diagnose fractures or infections.'),
(4, 'MRI Scan', 500.00, 'Magnetic Resonance Imaging for detailed internal body scans.'),
(5, 'Vaccination', 30.00, 'Routine immunizations and vaccines for adults and children.');

-- Inserting sample data into Department Table. 
INSERT INTO HealthcareDB.Department (DepartmentID, DepartmentName, DepartmentAddress, DepartmentPhone, DepartmentEmail, DepartmentLocation)
VALUES
(1, 'Cardiology', '123 Heart Lane, Springfield, IL 62704', '+1-217-555-0101', 'cardiology@healthcare.com', 'Building A, Floor 2, Room 210'),
(2, 'Pediatrics', '456 Child St, Springfield, IL 62704', '+1-217-555-0102', 'pediatrics@healthcare.com', 'Building B, Floor 1, Room 105'),
(3, 'Radiology', '789 Imaging Ave, Springfield, IL 62704', '+1-217-555-0103', 'radiology@healthcare.com', 'Building C, Floor 3, Room 310'),
(4, 'Neurology', '321 Brain Blvd, Springfield, IL 62704', '+1-217-555-0104', 'neurology@healthcare.com', 'Building A, Floor 4, Room 410'),
(5, 'Orthopedics', '654 Bone Rd, Springfield, IL 62704', '+1-217-555-0105', 'orthopedics@healthcare.com', 'Building B, Floor 2, Room 220');

-- Inserting sample data into Owner Table. 
INSERT INTO HealthcareDB.Owner (OwnerID, OwnerName, OwnerAddress, OwnerPhone, OwnerEmail)
VALUES
(1, 'Jonathan Smith', '12 Oakwood Ave, Springfield, IL 62704', '+1-217-555-0501', 'jonathan.smith@example.com'),
(2, 'Rebecca Lee', '45 Maple St, Springfield, IL 62704', '+1-217-555-0502', 'rebecca.lee@example.com'),
(3, 'Anthony Davis', '78 Pine Rd, Springfield, IL 62704', '+1-217-555-0503', 'anthony.davis@example.com'),
(4, 'Melissa Brown', '90 Cedar Lane, Springfield, IL 62704', '+1-217-555-0504', 'melissa.brown@example.com'),
(5, 'Christopher Wilson', '101 Birch Blvd, Springfield, IL 62704', '+1-217-555-0505', 'christopher.wilson@example.com');

-- Inserting sample data into PatientAvailability Table. 
INSERT INTO HealthcareDB.PatientAvailability (PatientAvailabilityID, PatientID, PatientStartTime, PatientEndTime, PatientDate)
VALUES
(1, 1, '09:00:00', '10:00:00', '2025-11-20'),
(2, 2, '11:30:00', '12:00:00', '2025-11-21'),
(3, 3, '14:00:00', '15:00:00', '2025-11-22'),
(4, 4, '10:15:00', '11:00:00', '2025-11-23'),
(5, 5, '13:00:00', '14:00:00', '2025-11-24');

-- Inserting sample data into Doctor Table. 
INSERT INTO HealthcareDB.Doctor (DoctorID, DepartmentID, DoctorName, DoctorAddress, DoctorPhone, DoctorEmail)
VALUES
(1, 1, 'Dr. Alice Morgan', '123 Heart Lane, Springfield, IL 62704', '+1-217-555-0111', 'alice.morgan@healthcare.com'),
(2, 2, 'Dr. Brian Kim', '456 Child St, Springfield, IL 62704', '+1-217-555-0112', 'brian.kim@healthcare.com'),
(3, 3, 'Dr. Carol Nguyen', '789 Imaging Ave, Springfield, IL 62704', '+1-217-555-0113', 'carol.nguyen@healthcare.com'),
(4, 4, 'Dr. David Patel', '321 Brain Blvd, Springfield, IL 62704', '+1-217-555-0114', 'david.patel@healthcare.com'),
(5, 5, 'Dr. Emma Rodriguez', '654 Bone Rd, Springfield, IL 62704', '+1-217-555-0115', 'emma.rodriguez@healthcare.com');

-- Inserting sample data into DoctorAvailability Table. 
INSERT INTO HealthcareDB.DoctorAvailability (DoctorAvailabilityID, DoctorID, DoctorStartTime, DoctorEndTime, DoctorDate)
VALUES
(1, 1, '09:00:00', '12:00:00', '2025-11-20'),
(2, 2, '10:00:00', '13:00:00', '2025-11-21'),
(3, 3, '13:00:00', '17:00:00', '2025-11-22'),
(4, 4, '08:30:00', '12:30:00', '2025-11-23'),
(5, 5, '14:00:00', '18:00:00', '2025-11-24');

-- Inserting sample data into Appointment Table.
INSERT INTO HealthcareDB.Appointment (AppointmentID, MedicalServiceID, PatientAvailabilityID, DoctorAvailabilityID, AppointmentDate, AppointmentTime)
VALUES
(1, 1, 1, 1, '2025-11-20', '09:30:00'),
(2, 2, 2, 2, '2025-11-21', '10:30:00'),
(3, 3, 3, 3, '2025-11-22', '14:30:00'),
(4, 4, 4, 4, '2025-11-23', '09:00:00'),
(5, 5, 5, 5, '2025-11-24', '15:00:00');

-- Inserting sample data into Payment Table.
INSERT INTO HealthcareDB.Payment (PaymentID, AppointmentID, AmountCharged, AmountPaid, PaymentDate, PaymentStatus)
VALUES
(1, 1, 75.00, 75.00, '2025-11-20', 'Paid'),
(2, 2, 50.00, 50.00, '2025-11-21', 'Paid'),
(3, 3, 120.00, 100.00, '2025-11-22', 'Partial'),
(4, 4, 500.00, 0.00, '2025-11-23', 'Pending'),
(5, 5, 30.00, 30.00, '2025-11-24', 'Paid');

-- Inserting sample data into Staff Table.
INSERT INTO HealthcareDB.Staff (StaffID, DepartmentID, StaffName, StaffAddress, StaffPhone, StaffEmail, StaffTitle)
VALUES
(1, 1, 'Laura Benson', '123 Heart Lane, Springfield, IL 62704', '+1-217-555-0201', 'laura.benson@healthcare.com', 'Nurse'),
(2, 2, 'Kevin Harris', '456 Child St, Springfield, IL 62704', '+1-217-555-0202', 'kevin.harris@healthcare.com', 'Receptionist'),
(3, 3, 'Monica Lee', '789 Imaging Ave, Springfield, IL 62704', '+1-217-555-0203', 'monica.lee@healthcare.com', 'Technician'),
(4, 4, 'James Thompson', '321 Brain Blvd, Springfield, IL 62704', '+1-217-555-0204', 'james.thompson@healthcare.com', 'Nurse'),
(5, 5, 'Angela Rivera', '654 Bone Rd, Springfield, IL 62704', '+1-217-555-0205', 'angela.rivera@healthcare.com', 'Receptionist');

-- Inserting sample data into Prescription Table.
INSERT INTO HealthcareDB.Prescription (PrescriptionID, AppointmentID, DateIssued, Diagnosis, Notes, Medication)
VALUES
(1, 1, '2025-11-20', 'Hypertension', 'Monitor blood pressure, reduce sodium intake', 'Lisinopril 10mg daily'),
(2, 2, '2025-11-21', 'Anemia', 'Increase iron-rich foods, follow-up in 2 weeks', 'Ferrous sulfate 325mg daily'),
(3, 3, '2025-11-22', 'Sprained Ankle', 'Rest, ice, compression, elevation', 'Ibuprofen 400mg as needed'),
(4, 4, '2025-11-23', 'Migraine', 'Avoid triggers, maintain hydration', 'Sumatriptan 50mg as needed'),
(5, 5, '2025-11-24', 'Seasonal Flu', 'Rest and stay hydrated, monitor symptoms', 'Oseltamivir 75mg twice daily');

-- Inserting sample data into MedicalCenter Table.
INSERT INTO HealthcareDB.MedicalCenter (MedicalCenterID, OwnerID, MedicalCenterName, MedicalCenterType, MedicalCenterAddress, MedicalCenterPhone, MedicalCenterEmail)
VALUES
(1, 1, 'Springfield General Hospital', 'Hospital', '100 Main St, Springfield, IL 62704', '+1-217-555-0301', 'info@springfieldhospital.com'),
(2, 2, 'Downtown Pediatric Clinic', 'Clinic', '200 Elm St, Springfield, IL 62704', '+1-217-555-0302', 'contact@downtownclinic.org'),
(3, 3, 'Radiology Imaging Center', 'Diagnostic Center', '300 Oak St, Springfield, IL 62704', '+1-217-555-0303', 'admin@radiologycenter.com'),
(4, 4, 'NeuroHealth Institute', 'Specialty Center', '400 Pine St, Springfield, IL 62704', '+1-217-555-0304', 'support@neurohealth.org'),
(5, 5, 'Orthopedic Care Center', 'Clinic', '500 Cedar St, Springfield, IL 62704', '+1-217-555-0305', 'office@orthocareclinic.com');

-- Inserting sample data into Pharmacy Table.
INSERT INTO HealthcareDB.Pharmacy (PharmacyID, MedicalCenterID, PharmacyName, PharmacyAddress, PharmacyPhone, PharmacyEmail)
VALUES
(1, 1, 'Springfield General Pharmacy', '100 Main St, Springfield, IL 62704', '+1-217-555-0401', 'pharmacy@springfieldhospital.com'),
(2, 2, 'Downtown Pediatric Pharmacy', '200 Elm St, Springfield, IL 62704', '+1-217-555-0402', 'pharmacy@downtownclinic.org'),
(3, 3, 'Radiology Care Pharmacy', '300 Oak St, Springfield, IL 62704', '+1-217-555-0403', 'pharmacy@radiologycenter.com'),
(4, 4, 'NeuroHealth Pharmacy', '400 Pine St, Springfield, IL 62704', '+1-217-555-0404', 'pharmacy@neurohealth.org'),
(5, 5, 'Orthopedic Care Pharmacy', '500 Cedar St, Springfield, IL 62704', '+1-217-555-0405', 'pharmacy@orthocareclinic.com');









