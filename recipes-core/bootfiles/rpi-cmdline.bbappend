CMDLINE_SERIAL = "${@oe.utils.conditional("ENABLE_UART", "1", "", "", d)}"
