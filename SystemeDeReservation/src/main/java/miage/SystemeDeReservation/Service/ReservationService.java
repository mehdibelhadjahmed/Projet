package miage.SystemeDeReservation.Service;

import java.util.List;

import miage.SystemeDeReservation.classes.ReservationTable;

public interface ReservationService {
	public void addReservation(ReservationTable r);
	public void majReservation(ReservationTable r);
	public ReservationTable getReservation(int id);
	public void deleteReservation(int id);
	public List<ReservationTable> getReservations();
}
