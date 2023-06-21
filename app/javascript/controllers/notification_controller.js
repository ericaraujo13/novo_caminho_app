import Notification from 'stimulus-notification'

export default class extends Notification {
  connect() {
    super.connect()
    console.log('Do what you want here.')
  }
}
