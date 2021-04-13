import api from "./apiConfig"

export const getLocations = async () => {
  try {
    const res = await api.get(`/locations`)
    return res.data
  } catch (error) {
    throw error
  }
}
