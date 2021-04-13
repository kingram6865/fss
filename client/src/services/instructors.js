import api from "./apiConfig"

export const getinstructors = async () => {
  try {
    const res = await api.get(`/instructors`)
    return res.data
  } catch (error) {
    throw error
  }
}