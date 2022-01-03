import { Socket } from 'phoenix'

let channel

const connect = () => {
  let socket = new Socket('ws://localhost:4000/socket', {})
  socket.connect()

  channel = socket.channel('room:lobby', {})

  channel.join()
    .receive('ok', ({ messages }) => console.log('catching up', messages))
    .receive('error', ({ reason }) => console.log('failed join', reason))
    .receive('timeout', () => console.log('Networking issue. Still waiting...'))
}

export { connect }
