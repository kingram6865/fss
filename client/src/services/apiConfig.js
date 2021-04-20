import axios from "axios"

let apiUrl;

const apiUrls = {
  production: 'https://fss-schedule.herokuapp.com/api',
  development: 'http://192.168.1.19:3006/api',
}

if (window.location.hostname === '192.168.1.19') {
  apiUrl = apiUrls.development
} else {
  apiUrl = apiUrls.production
}

const api = axios.create({
  baseURL: apiUrl
});

export default api;
