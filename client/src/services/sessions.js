import api from "./apiConfig"

export const getSessions = async () => {
  try {
    const res = await api.get(`/sessions`)
    return res.data
  } catch (error) {
    throw error
  }
}

export const getSession = async (id) => {
  try {
    const res = await api.get(`/sessions/${id}`)
    return res.data
  } catch (error) {
    throw error
  }
}

export const createSession = async data => {
  try {
    // console.log(`services/sessions.js => Create record: ${JSON.stringify(data, null, 2)}`)
    const res = await api.post('/sessions', data)
    return res.data
  } catch (error) {
    throw error
  }
}

export async function editSession (data) {
  try {
    // console.log(`Update record: ${JSON.stringify(data, null, 2)}`)
    const res = await api.put(`/sessions/${data.objid}`, data)
    return res.data
  } catch (error) {
    throw error
  }  
}

export async function deleteSession (id) {
  try {
    console.log(`Delete record: ${JSON.stringify(id, null, 2)}`)
    const res = await api.delete(`/sessions/${id}`)
    return res.data
  } catch (error) {
    throw error
  }  
}
