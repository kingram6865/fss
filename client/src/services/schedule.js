import api from "./apiConfig"

export const getAppointmentSchedule = async () => {
  try {
    const res = await api.get(`/schedule`)
    return res.data
  } catch (error) {
    throw error
  }
}