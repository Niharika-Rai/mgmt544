-- Finding the doctors who have the highest number of appointments in a given time period. 
SELECT 
    d.DoctorID,
    d.DoctorName,
    COUNT(a.AppointmentID) AS TotalAppointments
FROM HealthcareDB.Doctor d
JOIN HealthcareDB.DoctorAvailability da
    ON d.DoctorID = da.DoctorID
JOIN HealthcareDB.Appointment a
    ON a.DoctorAvailabilityID = da.DoctorAvailabilityID
WHERE a.AppointmentDate BETWEEN '2025-11-1' AND '2025-11-30'
GROUP BY d.DoctorID, d.DoctorName
ORDER BY TotalAppointments DESC;

-- Finding the total revenue generated from per medical service during a specific month. 
SELECT 
  ms.MedicalServiceName,
  SUM(p.AmountPaid) AS TotalRevenue
FROM HealthcareDB.Payment p
JOIN HealthcareDB.Appointment a
  ON p.AppointmentID = a.AppointmentID
JOIN HealthcareDB.MedicalService ms
  ON a.MedicalServiceID = ms.MedicalServiceID
WHERE p.PaymentDate BETWEEN '2025-11-01' AND '2025-11-30'
GROUP BY ms.MedicalServiceName
ORDER BY TotalRevenue DESC;

-- Finding which medical treatments (from MedicalService) are most frequently booked by patients.  
SELECT  
m.MedicalServiceName AS Treatment, 
COUNT(a.MedicalServiceID) AS TimesBooked 
FROM HealthcareDB.Appointment a 
JOIN HealthcareDB.MedicalService m 
ON a.MedicalServiceID = m.MedicalServiceID 
GROUP BY m.MedicalServiceName
ORDER BY TimesBooked DESC; 

-- Finding the percentage of appointments that are fully paid, partially paid and unpaid. 
SELECT  
PaymentStatus, 
COUNT(*) AS StatusCount, 
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM HealthcareDB.Payment), 2) AS Percentage 
FROM HealthcareDB.Payment
GROUP BY PaymentStatus 
ORDER BY Percentage DESC; 

-- Finding which departments handle the most appointments. 
SELECT d.DepartmentName, COUNT(a.AppointmentID) as TotalAppointments 
FROM HealthcareDB.Department d 
JOIN HealthcareDB.Doctor doc  
ON d.DepartmentID = doc.DepartmentID 
JOIN HealthcareDB.DoctorAvailability da 
ON doc.DoctorID = da.DoctorID 
JOIN HealthcareDB.Appointment a 
ON a.DoctorAvailabilityID = da.DoctorAvailabilityID 
GROUP BY d.DepartmentName 
ORDER BY TotalAppointments DESC; 

-- Which patients have visited the medical center the most in the last 6 months. 
SELECT p.PatientName, p.PatientID, COUNT(a.AppointmentID) AS TotalVisits 
FROM HealthcareDB.Patient  p 
JOIN HealthcareDB.PatientAvailability pav 
ON p.PatientID = pav.PatientID 
JOIN HealthcareDB.Appointment a 
ON a.PatientAvailabilityID = pav.PatientAvailabilityID 
WHERE DATE_DIFF(CURRENT_DATE(), a.AppointmentDate, MONTH) <= 6 
GROUP BY p.PatientID, p.PatientName 
ORDER BY TotalVisits DESC; 

-- Finding if the appointment time does not fall within the doctor's availability. 
SELECT 
  COUNT(*) AS AppointmentsWithDoctorUnavailable
FROM HealthcareDB.Appointment a
JOIN HealthcareDB.DoctorAvailability da
  ON a.DoctorAvailabilityID = da.DoctorAvailabilityID
WHERE 
  a.AppointmentTime NOT BETWEEN da.DoctorStartTime AND da.DoctorEndTime
  OR a.AppointmentDate != da.DoctorDate;

-- Finding the average treatment cost per department and doctor specialization.
SELECT 
  doc.DoctorName,
  d.DepartmentName,
  AVG(ms.MedicalServiceCost) AS AvgTreatmentCost
FROM HealthcareDB.Appointment a
JOIN HealthcareDB.DoctorAvailability da 
  ON a.DoctorAvailabilityID = da.DoctorAvailabilityID
JOIN HealthcareDB.Doctor doc
  ON da.DoctorID = doc.DoctorID
JOIN HealthcareDB.Department d
  ON doc.DepartmentID = d.DepartmentID
JOIN HealthcareDB.MedicalService ms
  ON a.MedicalServiceID = ms.MedicalServiceID
GROUP BY doc.DoctorName, d.DepartmentName
ORDER BY AvgTreatmentCost DESC;

-- Finding how many prescriptions were issued per doctor within a given date range.  
SELECT 
d.DoctorID, 
d.DoctorName, 
COUNT(pres.PrescriptionID) AS TotalPrescriptions 
FROM HealthcareDB.Prescription AS pres 
JOIN HealthcareDB.Appointment AS a 
ON pres.AppointmentID = a.AppointmentID 
JOIN HealthcareDB.DoctorAvailability AS da 
ON a.DoctorAvailabilityID = da.DoctorAvailabilityID 
JOIN HealthcareDB.Doctor AS d 
ON da.DoctorID = d.DoctorID 
WHERE pres.DateIssued BETWEEN '2025-11-01' AND '2025-11-30' 
GROUP BY d.DoctorID, d.DoctorName 
ORDER BY TotalPrescriptions DESC; 

-- Finding how many prescriptions were issued per department within a given date range.  
SELECT 
dept.DepartmentID, 
dept.DepartmentName, 
COUNT(pres.PrescriptionID) AS TotalPrescriptions 
FROM HealthcareDB.Prescription AS pres 
JOIN HealthcareDB.Appointment AS a 
ON pres.AppointmentID = a.AppointmentID 
JOIN HealthcareDB.DoctorAvailability AS da 
ON a.DoctorAvailabilityID = da.DoctorAvailabilityID 
JOIN HealthcareDB.Doctor AS d 
ON da.DoctorID = d.DoctorID 
JOIN HealthcareDB.Department AS dept 
ON d.DepartmentID = dept.DepartmentID 
WHERE pres.DateIssued BETWEEN '2025-11-01' AND '2025-11-30' 
GROUP BY dept.DepartmentID, dept.DepartmentName 
ORDER BY TotalPrescriptions DESC;

-- Finding which medical centers have the highest dispensing capacity, measured by how many pharmacies they own. 
SELECT 
mc.MedicalCenterID, 
mc.MedicalCenterName, 
COUNT(ph.PharmacyID) AS TotalPharmacies 
FROM HealthcareDB.MedicalCenter AS mc 
LEFT JOIN HealthcareDB.Pharmacy AS ph 
ON mc.MedicalCenterID = ph.MedicalCenterID 
GROUP BY 
mc.MedicalCenterID, 
mc.MedicalCenterName 
ORDER BY TotalPharmacies DESC; 
