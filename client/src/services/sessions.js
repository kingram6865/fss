import api from "./apiConfig"

export const getSessions = async () => {
  try {
    const res = await api.get(`/sessions`)
    return res.data
  } catch (error) {
    throw error
  }
}