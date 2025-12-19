![[Lab6.pdf]]

The primary key is always a candidate key
A super key is a subset of a candidate key

1. Candidate Keys
	- {PropertyNo, Date}: Guaranteed by the schema.
	- {Date, StaffNo} \{ \text{Date, StaffNo} \} {Date, StaffNo}: Based on data uniqueness.
	- {Date, Time} \{ \text{Date, Time} \} {Date, Time}: Based on data uniqueness.
2. Is the set of given FDs minimal?
	- {PropertyNo} → {Address}
	- {StaffNo} → {StaffName}
	- {PropertyNo, Date} → {StaffNo, Time}
	- {StaffNo, Date} → {CameraID}
	- {StaffNo, Date, Time} → {PropertyNo}
	- {Date, Time, CameraID} → {PropertyNo}
3. 