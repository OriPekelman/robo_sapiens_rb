require "robo_sapiens/version"
require "audio-playback"

COMMANDS= {
 right_shoulder_forward: "01_RIGHT_SHOULDER_FORWARD_0x81",
 right_shoulder_backward: "02_RIGHT_SHOULDER_BACKWARD_0x84",
 left_shoulder_forward: "03_LEFT_SHOULDER_FORWARD_0x89",
 left_shoulder_backward: "04_LEFT_SHOULDER_BACKWARD_0x8C",
 right_hand_forward: "05_RIGHT_HAND_FORWARD_0x82",
 right_hand_backward: "06_RIGHT_HAND_BACKWARD_0x85",
 left_hand_forward: "07_LEFT_HAND_FORWARD_0x8A",
 left_hand_backward: "08_LEFT_HAND_BACKWARD_0x8D",
 waist_right: "09_WAIST_RIGHT_0x83",
 waist_left: "10_WAIST_LEFT_0x8B",
 go_forward: "11_GO_FORWARD_0x86",
 go_backward: "12_GO_BACKWARD_0x87",
 turn_left: "13_TURN_LEFT_0x88",
 turn_right: "14_TURN_RIGHT_0x80",
 stop: "15_STOP_0x8E",
 right_sensor_program: "16_RIGHT_SENSOR_PROGRAM_0x92",
 sonic_sensor_program: "17_SONIC_SENSOR_PROGRAM_0x94",
 left_sensor_program: "18_LEFT_SENSOR_PROGRAM_0x93",
 main_program: "19_MAIN_PROGRAM_0x90",
 main_program_play: "20_MAIN_PROGRAM_PLAY_0x91",
 right_thump: "21_RIGHT_THUMP_0xA1",
 left_thump: "22_LEFT_THUMP_0xA9",
 right_pick_up: "23_RIGHT_PICK_UP_0xA4",
 left_pic_up: "24_LEFT_PIC_UP_0xAC",
 right_lean_bwd: "25_RIGHT_LEAN_BWD_0xA5",
 left_lean_fwd: "26_LEFT_LEAN_FWD_0xAD",
 right_throw: "27_RIGHT_THROW_0xA2",
 left_throw: "28_LEFT_THROW_0xAA",
 sleep: "29_SLEEP_0xA3",
 listen: "30_LISTEN_0xAB",
 step: "31_STEP_0xA6",
 back_step: "32_BACK_STEP_0xA7",
 right_turn_step: "33_RIGHT_TURN_STEP_0xA0",
 left_turn_step: "34_LEFT_TURN_STEP_0xA8",
 reset: "35_RESET_0xAE",
 right_sensor_program_excute: "36_RIGHT_SENSOR_PROGRAM_EXCUTE_0xB2",
 left_sensor_program_excute: "37_LEFT_SENSOR_PROGRAM_EXCUTE_0xB3",
 sonic_sensor_program_excute: "38_SONIC_SENSOR_PROGRAM_EXCUTE_0xB4",
 main_program_excute: "39_MAIN_PROGRAM_EXCUTE_0xB0",
 wake_up: "40_WAKE_UP_0xB1",
 right_sweep: "41_RIGHT_SWEEP_0xC1",
 left_sweep: "42_LEFT_SWEEP_0xC9",
 high5: "43_HIGH5_0xC4",
 talk_back: "44_TALK_BACK_0xCC",
 right_strike1: "45_RIGHT_STRIKE1_0xC5",
 left_strike1: "46_LEFT_STRIKE1_0xCD",
 burp: "47_BURP_0xC2",
 whistle: "48_WHISTLE_0xCA",
 right_strike2: "49_RIGHT_STRIKE2_0xC3",
 left_strike2: "50_LEFT_STRIKE2_0xCB",
 bulldozer: "51_BULLDOZER_0xC6",
 oops: "52_OOPS_0xC7",
 right_strike3: "53_RIGHT_STRIKE3_0xC0",
 left_strike3: "54_LEFT_STRIKE3_0xC8",
 roar: "55_ROAR_0xCE",
 demo1: "56_DEMO1_0xD2",
 demo2: "57_DEMO2_0xD3",
 dance: "58_DANCE_0xD4",
 all_demo: "59_ALL_DEMO_0xD0",
 power_off: "60_POWER_OFF_0xD1",
}

MEDIA_DIRECTORY = "./assets/Sounds/RoboSapien"

command = :epaule_droit_devant

def robot(command)
  @output = AudioPlayback::Device::outputs[0]
  @options = {
    :channels => [0,1],
    :latency => 1,
    :output_device => @output
  }
  @filename="#{MEDIA_DIRECTORY}/#{COMMANDS[command.to_sym]}.wav"
  @playback = AudioPlayback.play(@filename, @options)
  @playback.block
  @playback.start
  sleep 1
end
