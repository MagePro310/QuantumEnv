\* Scheduling *\
Minimize
OBJ: makespan
Subject To
_C1: c_j_0 = 0
_C10: - c_j_1 + z_ikt_1_BELEM_1 + z_ikt_1_QUITO_1 <= 0
_C100: - c_j_1 + 31 z_ikt_1_BELEM_31 + 31 z_ikt_1_QUITO_31 <= 0
_C101: z_ikt_1_BELEM_31 + z_ikt_1_QUITO_31 <= 1
_C102: s_j_1 + 969 z_ikt_1_BELEM_31 + 969 z_ikt_1_QUITO_31 <= 1000
_C103: c_j_2 - makespan <= 0
_C104: x_ik_2_BELEM + x_ik_2_QUITO = 1
_C105: c_j_2 - s_j_2 - z_ikt_2_BELEM_0 - z_ikt_2_BELEM_1 - z_ikt_2_BELEM_10
 - z_ikt_2_BELEM_11 - z_ikt_2_BELEM_12 - z_ikt_2_BELEM_13 - z_ikt_2_BELEM_14
 - z_ikt_2_BELEM_15 - z_ikt_2_BELEM_16 - z_ikt_2_BELEM_17 - z_ikt_2_BELEM_18
 - z_ikt_2_BELEM_19 - z_ikt_2_BELEM_2 - z_ikt_2_BELEM_20 - z_ikt_2_BELEM_21
 - z_ikt_2_BELEM_22 - z_ikt_2_BELEM_23 - z_ikt_2_BELEM_24 - z_ikt_2_BELEM_25
 - z_ikt_2_BELEM_26 - z_ikt_2_BELEM_27 - z_ikt_2_BELEM_28 - z_ikt_2_BELEM_29
 - z_ikt_2_BELEM_3 - z_ikt_2_BELEM_30 - z_ikt_2_BELEM_31 - z_ikt_2_BELEM_4
 - z_ikt_2_BELEM_5 - z_ikt_2_BELEM_6 - z_ikt_2_BELEM_7 - z_ikt_2_BELEM_8
 - z_ikt_2_BELEM_9 - z_ikt_2_QUITO_0 - z_ikt_2_QUITO_1 - z_ikt_2_QUITO_10
 - z_ikt_2_QUITO_11 - z_ikt_2_QUITO_12 - z_ikt_2_QUITO_13 - z_ikt_2_QUITO_14
 - z_ikt_2_QUITO_15 - z_ikt_2_QUITO_16 - z_ikt_2_QUITO_17 - z_ikt_2_QUITO_18
 - z_ikt_2_QUITO_19 - z_ikt_2_QUITO_2 - z_ikt_2_QUITO_20 - z_ikt_2_QUITO_21
 - z_ikt_2_QUITO_22 - z_ikt_2_QUITO_23 - z_ikt_2_QUITO_24 - z_ikt_2_QUITO_25
 - z_ikt_2_QUITO_26 - z_ikt_2_QUITO_27 - z_ikt_2_QUITO_28 - z_ikt_2_QUITO_29
 - z_ikt_2_QUITO_3 - z_ikt_2_QUITO_30 - z_ikt_2_QUITO_31 - z_ikt_2_QUITO_4
 - z_ikt_2_QUITO_5 - z_ikt_2_QUITO_6 - z_ikt_2_QUITO_7 - z_ikt_2_QUITO_8
 - z_ikt_2_QUITO_9 = -1
_C106: - 1000 x_ik_2_QUITO + z_ikt_2_QUITO_0 + z_ikt_2_QUITO_1
 + z_ikt_2_QUITO_10 + z_ikt_2_QUITO_11 + z_ikt_2_QUITO_12 + z_ikt_2_QUITO_13
 + z_ikt_2_QUITO_14 + z_ikt_2_QUITO_15 + z_ikt_2_QUITO_16 + z_ikt_2_QUITO_17
 + z_ikt_2_QUITO_18 + z_ikt_2_QUITO_19 + z_ikt_2_QUITO_2 + z_ikt_2_QUITO_20
 + z_ikt_2_QUITO_21 + z_ikt_2_QUITO_22 + z_ikt_2_QUITO_23 + z_ikt_2_QUITO_24
 + z_ikt_2_QUITO_25 + z_ikt_2_QUITO_26 + z_ikt_2_QUITO_27 + z_ikt_2_QUITO_28
 + z_ikt_2_QUITO_29 + z_ikt_2_QUITO_3 + z_ikt_2_QUITO_30 + z_ikt_2_QUITO_31
 + z_ikt_2_QUITO_4 + z_ikt_2_QUITO_5 + z_ikt_2_QUITO_6 + z_ikt_2_QUITO_7
 + z_ikt_2_QUITO_8 + z_ikt_2_QUITO_9 <= 0
_C107: - 1000 x_ik_2_BELEM + z_ikt_2_BELEM_0 + z_ikt_2_BELEM_1
 + z_ikt_2_BELEM_10 + z_ikt_2_BELEM_11 + z_ikt_2_BELEM_12 + z_ikt_2_BELEM_13
 + z_ikt_2_BELEM_14 + z_ikt_2_BELEM_15 + z_ikt_2_BELEM_16 + z_ikt_2_BELEM_17
 + z_ikt_2_BELEM_18 + z_ikt_2_BELEM_19 + z_ikt_2_BELEM_2 + z_ikt_2_BELEM_20
 + z_ikt_2_BELEM_21 + z_ikt_2_BELEM_22 + z_ikt_2_BELEM_23 + z_ikt_2_BELEM_24
 + z_ikt_2_BELEM_25 + z_ikt_2_BELEM_26 + z_ikt_2_BELEM_27 + z_ikt_2_BELEM_28
 + z_ikt_2_BELEM_29 + z_ikt_2_BELEM_3 + z_ikt_2_BELEM_30 + z_ikt_2_BELEM_31
 + z_ikt_2_BELEM_4 + z_ikt_2_BELEM_5 + z_ikt_2_BELEM_6 + z_ikt_2_BELEM_7
 + z_ikt_2_BELEM_8 + z_ikt_2_BELEM_9 <= 0
_C108: - c_j_2 <= 0
_C109: z_ikt_2_BELEM_0 + z_ikt_2_QUITO_0 <= 1
_C11: z_ikt_1_BELEM_1 + z_ikt_1_QUITO_1 <= 1
_C110: s_j_2 + 1000 z_ikt_2_BELEM_0 + 1000 z_ikt_2_QUITO_0 <= 1000
_C111: - c_j_2 + z_ikt_2_BELEM_1 + z_ikt_2_QUITO_1 <= 0
_C112: z_ikt_2_BELEM_1 + z_ikt_2_QUITO_1 <= 1
_C113: s_j_2 + 999 z_ikt_2_BELEM_1 + 999 z_ikt_2_QUITO_1 <= 1000
_C114: - c_j_2 + 2 z_ikt_2_BELEM_2 + 2 z_ikt_2_QUITO_2 <= 0
_C115: z_ikt_2_BELEM_2 + z_ikt_2_QUITO_2 <= 1
_C116: s_j_2 + 998 z_ikt_2_BELEM_2 + 998 z_ikt_2_QUITO_2 <= 1000
_C117: - c_j_2 + 3 z_ikt_2_BELEM_3 + 3 z_ikt_2_QUITO_3 <= 0
_C118: z_ikt_2_BELEM_3 + z_ikt_2_QUITO_3 <= 1
_C119: s_j_2 + 997 z_ikt_2_BELEM_3 + 997 z_ikt_2_QUITO_3 <= 1000
_C12: s_j_1 + 999 z_ikt_1_BELEM_1 + 999 z_ikt_1_QUITO_1 <= 1000
_C120: - c_j_2 + 4 z_ikt_2_BELEM_4 + 4 z_ikt_2_QUITO_4 <= 0
_C121: z_ikt_2_BELEM_4 + z_ikt_2_QUITO_4 <= 1
_C122: s_j_2 + 996 z_ikt_2_BELEM_4 + 996 z_ikt_2_QUITO_4 <= 1000
_C123: - c_j_2 + 5 z_ikt_2_BELEM_5 + 5 z_ikt_2_QUITO_5 <= 0
_C124: z_ikt_2_BELEM_5 + z_ikt_2_QUITO_5 <= 1
_C125: s_j_2 + 995 z_ikt_2_BELEM_5 + 995 z_ikt_2_QUITO_5 <= 1000
_C126: - c_j_2 + 6 z_ikt_2_BELEM_6 + 6 z_ikt_2_QUITO_6 <= 0
_C127: z_ikt_2_BELEM_6 + z_ikt_2_QUITO_6 <= 1
_C128: s_j_2 + 994 z_ikt_2_BELEM_6 + 994 z_ikt_2_QUITO_6 <= 1000
_C129: - c_j_2 + 7 z_ikt_2_BELEM_7 + 7 z_ikt_2_QUITO_7 <= 0
_C13: - c_j_1 + 2 z_ikt_1_BELEM_2 + 2 z_ikt_1_QUITO_2 <= 0
_C130: z_ikt_2_BELEM_7 + z_ikt_2_QUITO_7 <= 1
_C131: s_j_2 + 993 z_ikt_2_BELEM_7 + 993 z_ikt_2_QUITO_7 <= 1000
_C132: - c_j_2 + 8 z_ikt_2_BELEM_8 + 8 z_ikt_2_QUITO_8 <= 0
_C133: z_ikt_2_BELEM_8 + z_ikt_2_QUITO_8 <= 1
_C134: s_j_2 + 992 z_ikt_2_BELEM_8 + 992 z_ikt_2_QUITO_8 <= 1000
_C135: - c_j_2 + 9 z_ikt_2_BELEM_9 + 9 z_ikt_2_QUITO_9 <= 0
_C136: z_ikt_2_BELEM_9 + z_ikt_2_QUITO_9 <= 1
_C137: s_j_2 + 991 z_ikt_2_BELEM_9 + 991 z_ikt_2_QUITO_9 <= 1000
_C138: - c_j_2 + 10 z_ikt_2_BELEM_10 + 10 z_ikt_2_QUITO_10 <= 0
_C139: z_ikt_2_BELEM_10 + z_ikt_2_QUITO_10 <= 1
_C14: z_ikt_1_BELEM_2 + z_ikt_1_QUITO_2 <= 1
_C140: s_j_2 + 990 z_ikt_2_BELEM_10 + 990 z_ikt_2_QUITO_10 <= 1000
_C141: - c_j_2 + 11 z_ikt_2_BELEM_11 + 11 z_ikt_2_QUITO_11 <= 0
_C142: z_ikt_2_BELEM_11 + z_ikt_2_QUITO_11 <= 1
_C143: s_j_2 + 989 z_ikt_2_BELEM_11 + 989 z_ikt_2_QUITO_11 <= 1000
_C144: - c_j_2 + 12 z_ikt_2_BELEM_12 + 12 z_ikt_2_QUITO_12 <= 0
_C145: z_ikt_2_BELEM_12 + z_ikt_2_QUITO_12 <= 1
_C146: s_j_2 + 988 z_ikt_2_BELEM_12 + 988 z_ikt_2_QUITO_12 <= 1000
_C147: - c_j_2 + 13 z_ikt_2_BELEM_13 + 13 z_ikt_2_QUITO_13 <= 0
_C148: z_ikt_2_BELEM_13 + z_ikt_2_QUITO_13 <= 1
_C149: s_j_2 + 987 z_ikt_2_BELEM_13 + 987 z_ikt_2_QUITO_13 <= 1000
_C15: s_j_1 + 998 z_ikt_1_BELEM_2 + 998 z_ikt_1_QUITO_2 <= 1000
_C150: - c_j_2 + 14 z_ikt_2_BELEM_14 + 14 z_ikt_2_QUITO_14 <= 0
_C151: z_ikt_2_BELEM_14 + z_ikt_2_QUITO_14 <= 1
_C152: s_j_2 + 986 z_ikt_2_BELEM_14 + 986 z_ikt_2_QUITO_14 <= 1000
_C153: - c_j_2 + 15 z_ikt_2_BELEM_15 + 15 z_ikt_2_QUITO_15 <= 0
_C154: z_ikt_2_BELEM_15 + z_ikt_2_QUITO_15 <= 1
_C155: s_j_2 + 985 z_ikt_2_BELEM_15 + 985 z_ikt_2_QUITO_15 <= 1000
_C156: - c_j_2 + 16 z_ikt_2_BELEM_16 + 16 z_ikt_2_QUITO_16 <= 0
_C157: z_ikt_2_BELEM_16 + z_ikt_2_QUITO_16 <= 1
_C158: s_j_2 + 984 z_ikt_2_BELEM_16 + 984 z_ikt_2_QUITO_16 <= 1000
_C159: - c_j_2 + 17 z_ikt_2_BELEM_17 + 17 z_ikt_2_QUITO_17 <= 0
_C16: - c_j_1 + 3 z_ikt_1_BELEM_3 + 3 z_ikt_1_QUITO_3 <= 0
_C160: z_ikt_2_BELEM_17 + z_ikt_2_QUITO_17 <= 1
_C161: s_j_2 + 983 z_ikt_2_BELEM_17 + 983 z_ikt_2_QUITO_17 <= 1000
_C162: - c_j_2 + 18 z_ikt_2_BELEM_18 + 18 z_ikt_2_QUITO_18 <= 0
_C163: z_ikt_2_BELEM_18 + z_ikt_2_QUITO_18 <= 1
_C164: s_j_2 + 982 z_ikt_2_BELEM_18 + 982 z_ikt_2_QUITO_18 <= 1000
_C165: - c_j_2 + 19 z_ikt_2_BELEM_19 + 19 z_ikt_2_QUITO_19 <= 0
_C166: z_ikt_2_BELEM_19 + z_ikt_2_QUITO_19 <= 1
_C167: s_j_2 + 981 z_ikt_2_BELEM_19 + 981 z_ikt_2_QUITO_19 <= 1000
_C168: - c_j_2 + 20 z_ikt_2_BELEM_20 + 20 z_ikt_2_QUITO_20 <= 0
_C169: z_ikt_2_BELEM_20 + z_ikt_2_QUITO_20 <= 1
_C17: z_ikt_1_BELEM_3 + z_ikt_1_QUITO_3 <= 1
_C170: s_j_2 + 980 z_ikt_2_BELEM_20 + 980 z_ikt_2_QUITO_20 <= 1000
_C171: - c_j_2 + 21 z_ikt_2_BELEM_21 + 21 z_ikt_2_QUITO_21 <= 0
_C172: z_ikt_2_BELEM_21 + z_ikt_2_QUITO_21 <= 1
_C173: s_j_2 + 979 z_ikt_2_BELEM_21 + 979 z_ikt_2_QUITO_21 <= 1000
_C174: - c_j_2 + 22 z_ikt_2_BELEM_22 + 22 z_ikt_2_QUITO_22 <= 0
_C175: z_ikt_2_BELEM_22 + z_ikt_2_QUITO_22 <= 1
_C176: s_j_2 + 978 z_ikt_2_BELEM_22 + 978 z_ikt_2_QUITO_22 <= 1000
_C177: - c_j_2 + 23 z_ikt_2_BELEM_23 + 23 z_ikt_2_QUITO_23 <= 0
_C178: z_ikt_2_BELEM_23 + z_ikt_2_QUITO_23 <= 1
_C179: s_j_2 + 977 z_ikt_2_BELEM_23 + 977 z_ikt_2_QUITO_23 <= 1000
_C18: s_j_1 + 997 z_ikt_1_BELEM_3 + 997 z_ikt_1_QUITO_3 <= 1000
_C180: - c_j_2 + 24 z_ikt_2_BELEM_24 + 24 z_ikt_2_QUITO_24 <= 0
_C181: z_ikt_2_BELEM_24 + z_ikt_2_QUITO_24 <= 1
_C182: s_j_2 + 976 z_ikt_2_BELEM_24 + 976 z_ikt_2_QUITO_24 <= 1000
_C183: - c_j_2 + 25 z_ikt_2_BELEM_25 + 25 z_ikt_2_QUITO_25 <= 0
_C184: z_ikt_2_BELEM_25 + z_ikt_2_QUITO_25 <= 1
_C185: s_j_2 + 975 z_ikt_2_BELEM_25 + 975 z_ikt_2_QUITO_25 <= 1000
_C186: - c_j_2 + 26 z_ikt_2_BELEM_26 + 26 z_ikt_2_QUITO_26 <= 0
_C187: z_ikt_2_BELEM_26 + z_ikt_2_QUITO_26 <= 1
_C188: s_j_2 + 974 z_ikt_2_BELEM_26 + 974 z_ikt_2_QUITO_26 <= 1000
_C189: - c_j_2 + 27 z_ikt_2_BELEM_27 + 27 z_ikt_2_QUITO_27 <= 0
_C19: - c_j_1 + 4 z_ikt_1_BELEM_4 + 4 z_ikt_1_QUITO_4 <= 0
_C190: z_ikt_2_BELEM_27 + z_ikt_2_QUITO_27 <= 1
_C191: s_j_2 + 973 z_ikt_2_BELEM_27 + 973 z_ikt_2_QUITO_27 <= 1000
_C192: - c_j_2 + 28 z_ikt_2_BELEM_28 + 28 z_ikt_2_QUITO_28 <= 0
_C193: z_ikt_2_BELEM_28 + z_ikt_2_QUITO_28 <= 1
_C194: s_j_2 + 972 z_ikt_2_BELEM_28 + 972 z_ikt_2_QUITO_28 <= 1000
_C195: - c_j_2 + 29 z_ikt_2_BELEM_29 + 29 z_ikt_2_QUITO_29 <= 0
_C196: z_ikt_2_BELEM_29 + z_ikt_2_QUITO_29 <= 1
_C197: s_j_2 + 971 z_ikt_2_BELEM_29 + 971 z_ikt_2_QUITO_29 <= 1000
_C198: - c_j_2 + 30 z_ikt_2_BELEM_30 + 30 z_ikt_2_QUITO_30 <= 0
_C199: z_ikt_2_BELEM_30 + z_ikt_2_QUITO_30 <= 1
_C2: c_j_1 - makespan <= 0
_C20: z_ikt_1_BELEM_4 + z_ikt_1_QUITO_4 <= 1
_C200: s_j_2 + 970 z_ikt_2_BELEM_30 + 970 z_ikt_2_QUITO_30 <= 1000
_C201: - c_j_2 + 31 z_ikt_2_BELEM_31 + 31 z_ikt_2_QUITO_31 <= 0
_C202: z_ikt_2_BELEM_31 + z_ikt_2_QUITO_31 <= 1
_C203: s_j_2 + 969 z_ikt_2_BELEM_31 + 969 z_ikt_2_QUITO_31 <= 1000
_C204: 2 z_ikt_1_QUITO_0 + 3 z_ikt_2_QUITO_0 <= 5
_C205: 2 z_ikt_1_BELEM_0 + 3 z_ikt_2_BELEM_0 <= 5
_C206: 2 z_ikt_1_QUITO_1 + 3 z_ikt_2_QUITO_1 <= 5
_C207: 2 z_ikt_1_BELEM_1 + 3 z_ikt_2_BELEM_1 <= 5
_C208: 2 z_ikt_1_QUITO_2 + 3 z_ikt_2_QUITO_2 <= 5
_C209: 2 z_ikt_1_BELEM_2 + 3 z_ikt_2_BELEM_2 <= 5
_C21: s_j_1 + 996 z_ikt_1_BELEM_4 + 996 z_ikt_1_QUITO_4 <= 1000
_C210: 2 z_ikt_1_QUITO_3 + 3 z_ikt_2_QUITO_3 <= 5
_C211: 2 z_ikt_1_BELEM_3 + 3 z_ikt_2_BELEM_3 <= 5
_C212: 2 z_ikt_1_QUITO_4 + 3 z_ikt_2_QUITO_4 <= 5
_C213: 2 z_ikt_1_BELEM_4 + 3 z_ikt_2_BELEM_4 <= 5
_C214: 2 z_ikt_1_QUITO_5 + 3 z_ikt_2_QUITO_5 <= 5
_C215: 2 z_ikt_1_BELEM_5 + 3 z_ikt_2_BELEM_5 <= 5
_C216: 2 z_ikt_1_QUITO_6 + 3 z_ikt_2_QUITO_6 <= 5
_C217: 2 z_ikt_1_BELEM_6 + 3 z_ikt_2_BELEM_6 <= 5
_C218: 2 z_ikt_1_QUITO_7 + 3 z_ikt_2_QUITO_7 <= 5
_C219: 2 z_ikt_1_BELEM_7 + 3 z_ikt_2_BELEM_7 <= 5
_C22: - c_j_1 + 5 z_ikt_1_BELEM_5 + 5 z_ikt_1_QUITO_5 <= 0
_C220: 2 z_ikt_1_QUITO_8 + 3 z_ikt_2_QUITO_8 <= 5
_C221: 2 z_ikt_1_BELEM_8 + 3 z_ikt_2_BELEM_8 <= 5
_C222: 2 z_ikt_1_QUITO_9 + 3 z_ikt_2_QUITO_9 <= 5
_C223: 2 z_ikt_1_BELEM_9 + 3 z_ikt_2_BELEM_9 <= 5
_C224: 2 z_ikt_1_QUITO_10 + 3 z_ikt_2_QUITO_10 <= 5
_C225: 2 z_ikt_1_BELEM_10 + 3 z_ikt_2_BELEM_10 <= 5
_C226: 2 z_ikt_1_QUITO_11 + 3 z_ikt_2_QUITO_11 <= 5
_C227: 2 z_ikt_1_BELEM_11 + 3 z_ikt_2_BELEM_11 <= 5
_C228: 2 z_ikt_1_QUITO_12 + 3 z_ikt_2_QUITO_12 <= 5
_C229: 2 z_ikt_1_BELEM_12 + 3 z_ikt_2_BELEM_12 <= 5
_C23: z_ikt_1_BELEM_5 + z_ikt_1_QUITO_5 <= 1
_C230: 2 z_ikt_1_QUITO_13 + 3 z_ikt_2_QUITO_13 <= 5
_C231: 2 z_ikt_1_BELEM_13 + 3 z_ikt_2_BELEM_13 <= 5
_C232: 2 z_ikt_1_QUITO_14 + 3 z_ikt_2_QUITO_14 <= 5
_C233: 2 z_ikt_1_BELEM_14 + 3 z_ikt_2_BELEM_14 <= 5
_C234: 2 z_ikt_1_QUITO_15 + 3 z_ikt_2_QUITO_15 <= 5
_C235: 2 z_ikt_1_BELEM_15 + 3 z_ikt_2_BELEM_15 <= 5
_C236: 2 z_ikt_1_QUITO_16 + 3 z_ikt_2_QUITO_16 <= 5
_C237: 2 z_ikt_1_BELEM_16 + 3 z_ikt_2_BELEM_16 <= 5
_C238: 2 z_ikt_1_QUITO_17 + 3 z_ikt_2_QUITO_17 <= 5
_C239: 2 z_ikt_1_BELEM_17 + 3 z_ikt_2_BELEM_17 <= 5
_C24: s_j_1 + 995 z_ikt_1_BELEM_5 + 995 z_ikt_1_QUITO_5 <= 1000
_C240: 2 z_ikt_1_QUITO_18 + 3 z_ikt_2_QUITO_18 <= 5
_C241: 2 z_ikt_1_BELEM_18 + 3 z_ikt_2_BELEM_18 <= 5
_C242: 2 z_ikt_1_QUITO_19 + 3 z_ikt_2_QUITO_19 <= 5
_C243: 2 z_ikt_1_BELEM_19 + 3 z_ikt_2_BELEM_19 <= 5
_C244: 2 z_ikt_1_QUITO_20 + 3 z_ikt_2_QUITO_20 <= 5
_C245: 2 z_ikt_1_BELEM_20 + 3 z_ikt_2_BELEM_20 <= 5
_C246: 2 z_ikt_1_QUITO_21 + 3 z_ikt_2_QUITO_21 <= 5
_C247: 2 z_ikt_1_BELEM_21 + 3 z_ikt_2_BELEM_21 <= 5
_C248: 2 z_ikt_1_QUITO_22 + 3 z_ikt_2_QUITO_22 <= 5
_C249: 2 z_ikt_1_BELEM_22 + 3 z_ikt_2_BELEM_22 <= 5
_C25: - c_j_1 + 6 z_ikt_1_BELEM_6 + 6 z_ikt_1_QUITO_6 <= 0
_C250: 2 z_ikt_1_QUITO_23 + 3 z_ikt_2_QUITO_23 <= 5
_C251: 2 z_ikt_1_BELEM_23 + 3 z_ikt_2_BELEM_23 <= 5
_C252: 2 z_ikt_1_QUITO_24 + 3 z_ikt_2_QUITO_24 <= 5
_C253: 2 z_ikt_1_BELEM_24 + 3 z_ikt_2_BELEM_24 <= 5
_C254: 2 z_ikt_1_QUITO_25 + 3 z_ikt_2_QUITO_25 <= 5
_C255: 2 z_ikt_1_BELEM_25 + 3 z_ikt_2_BELEM_25 <= 5
_C256: 2 z_ikt_1_QUITO_26 + 3 z_ikt_2_QUITO_26 <= 5
_C257: 2 z_ikt_1_BELEM_26 + 3 z_ikt_2_BELEM_26 <= 5
_C258: 2 z_ikt_1_QUITO_27 + 3 z_ikt_2_QUITO_27 <= 5
_C259: 2 z_ikt_1_BELEM_27 + 3 z_ikt_2_BELEM_27 <= 5
_C26: z_ikt_1_BELEM_6 + z_ikt_1_QUITO_6 <= 1
_C260: 2 z_ikt_1_QUITO_28 + 3 z_ikt_2_QUITO_28 <= 5
_C261: 2 z_ikt_1_BELEM_28 + 3 z_ikt_2_BELEM_28 <= 5
_C262: 2 z_ikt_1_QUITO_29 + 3 z_ikt_2_QUITO_29 <= 5
_C263: 2 z_ikt_1_BELEM_29 + 3 z_ikt_2_BELEM_29 <= 5
_C264: 2 z_ikt_1_QUITO_30 + 3 z_ikt_2_QUITO_30 <= 5
_C265: 2 z_ikt_1_BELEM_30 + 3 z_ikt_2_BELEM_30 <= 5
_C266: 2 z_ikt_1_QUITO_31 + 3 z_ikt_2_QUITO_31 <= 5
_C267: 2 z_ikt_1_BELEM_31 + 3 z_ikt_2_BELEM_31 <= 5
_C268: y_ijk_0_1_BELEM + y_ijk_0_1_QUITO + y_ijk_1_1_BELEM + y_ijk_1_1_QUITO
 + y_ijk_2_1_BELEM + y_ijk_2_1_QUITO >= 1
_C269: c_j_1 - s_j_1 - 9 x_ik_1_BELEM - 8 x_ik_1_QUITO - 50 y_ijk_1_1_BELEM
 - 50 y_ijk_1_1_QUITO - 7 y_ijk_2_1_BELEM - 7 y_ijk_2_1_QUITO >= 0
_C27: s_j_1 + 994 z_ikt_1_BELEM_6 + 994 z_ikt_1_QUITO_6 <= 1000
_C270: x_ik_1_QUITO - 0.001 y_ijk_0_1_QUITO - 0.001 y_ijk_1_1_QUITO
 - 0.001 y_ijk_2_1_QUITO >= 0
_C271: x_ik_1_QUITO - 0.001 y_ijk_1_0_QUITO - 0.001 y_ijk_1_1_QUITO
 - 0.001 y_ijk_1_2_QUITO >= 0
_C272: - y_ijk_0_1_QUITO + z_ikt_1_QUITO_0 = 0
_C273: x_ik_1_BELEM - 0.001 y_ijk_0_1_BELEM - 0.001 y_ijk_1_1_BELEM
 - 0.001 y_ijk_2_1_BELEM >= 0
_C274: x_ik_1_BELEM - 0.001 y_ijk_1_0_BELEM - 0.001 y_ijk_1_1_BELEM
 - 0.001 y_ijk_1_2_BELEM >= 0
_C275: - y_ijk_0_1_BELEM + z_ikt_1_BELEM_0 = 0
_C276: c_j_0 - s_j_1 + 1000 y_ijk_0_1_BELEM + 1000 y_ijk_0_1_QUITO <= 1000
_C277: c_j_1 - s_j_1 + 1000 y_ijk_1_1_BELEM + 1000 y_ijk_1_1_QUITO <= 1000
_C278: c_j_2 - s_j_1 + 1000 y_ijk_2_1_BELEM + 1000 y_ijk_2_1_QUITO <= 1000
_C279: y_ijk_0_2_BELEM + y_ijk_0_2_QUITO + y_ijk_1_2_BELEM + y_ijk_1_2_QUITO
 + y_ijk_2_2_BELEM + y_ijk_2_2_QUITO >= 1
_C28: - c_j_1 + 7 z_ikt_1_BELEM_7 + 7 z_ikt_1_QUITO_7 <= 0
_C280: c_j_2 - s_j_2 - 10 x_ik_2_BELEM - 8 x_ik_2_QUITO - 6 y_ijk_1_2_BELEM
 - 9 y_ijk_1_2_QUITO - 50 y_ijk_2_2_BELEM - 50 y_ijk_2_2_QUITO >= 0
_C281: x_ik_2_QUITO - 0.001 y_ijk_0_2_QUITO - 0.001 y_ijk_1_2_QUITO
 - 0.001 y_ijk_2_2_QUITO >= 0
_C282: x_ik_2_QUITO - 0.001 y_ijk_2_0_QUITO - 0.001 y_ijk_2_1_QUITO
 - 0.001 y_ijk_2_2_QUITO >= 0
_C283: - y_ijk_0_2_QUITO + z_ikt_2_QUITO_0 = 0
_C284: x_ik_2_BELEM - 0.001 y_ijk_0_2_BELEM - 0.001 y_ijk_1_2_BELEM
 - 0.001 y_ijk_2_2_BELEM >= 0
_C285: x_ik_2_BELEM - 0.001 y_ijk_2_0_BELEM - 0.001 y_ijk_2_1_BELEM
 - 0.001 y_ijk_2_2_BELEM >= 0
_C286: - y_ijk_0_2_BELEM + z_ikt_2_BELEM_0 = 0
_C287: c_j_0 - s_j_2 + 1000 y_ijk_0_2_BELEM + 1000 y_ijk_0_2_QUITO <= 1000
_C288: c_j_1 - s_j_2 + 1000 y_ijk_1_2_BELEM + 1000 y_ijk_1_2_QUITO <= 1000
_C289: c_j_2 - s_j_2 + 1000 y_ijk_2_2_BELEM + 1000 y_ijk_2_2_QUITO <= 1000
_C29: z_ikt_1_BELEM_7 + z_ikt_1_QUITO_7 <= 1
_C290: a_ij_1_1 = 0
_C291: b_ij_1_1 = 0
_C292: a_ij_1_2 + 0.001 c_j_1 - 0.001 s_j_2 >= 0
_C293: b_ij_1_2 + 0.001 c_j_1 - 0.001 c_j_2 >= 0
_C294: d_ijk_1_2_QUITO - x_ik_1_QUITO - x_ik_2_QUITO >= -1
_C295: - a_ij_1_2 - b_ij_1_1 - d_ijk_1_1_QUITO - d_ijk_1_2_QUITO
 + e_ijlk_1_2_1_QUITO >= -3
_C296: - a_ij_2_2 - b_ij_1_2 - 2 d_ijk_1_2_QUITO + e_ijlk_1_2_2_QUITO >= -3
_C297: d_ijk_1_2_BELEM - x_ik_1_BELEM - x_ik_2_BELEM >= -1
_C298: - a_ij_1_2 - b_ij_1_1 - d_ijk_1_1_BELEM - d_ijk_1_2_BELEM
 + e_ijlk_1_2_1_BELEM >= -3
_C299: - a_ij_2_2 - b_ij_1_2 - 2 d_ijk_1_2_BELEM + e_ijlk_1_2_2_BELEM >= -3
_C3: x_ik_1_BELEM + x_ik_1_QUITO = 1
_C30: s_j_1 + 993 z_ikt_1_BELEM_7 + 993 z_ikt_1_QUITO_7 <= 1000
_C300: a_ij_2_1 + 0.001 c_j_2 - 0.001 s_j_1 >= 0
_C301: b_ij_2_1 - 0.001 c_j_1 + 0.001 c_j_2 >= 0
_C302: d_ijk_2_1_QUITO - x_ik_1_QUITO - x_ik_2_QUITO >= -1
_C303: - a_ij_1_1 - b_ij_2_1 - 2 d_ijk_2_1_QUITO + e_ijlk_2_1_1_QUITO >= -3
_C304: - a_ij_2_1 - b_ij_2_2 - d_ijk_2_1_QUITO - d_ijk_2_2_QUITO
 + e_ijlk_2_1_2_QUITO >= -3
_C305: d_ijk_2_1_BELEM - x_ik_1_BELEM - x_ik_2_BELEM >= -1
_C306: - a_ij_1_1 - b_ij_2_1 - 2 d_ijk_2_1_BELEM + e_ijlk_2_1_1_BELEM >= -3
_C307: - a_ij_2_1 - b_ij_2_2 - d_ijk_2_1_BELEM - d_ijk_2_2_BELEM
 + e_ijlk_2_1_2_BELEM >= -3
_C308: a_ij_2_2 = 0
_C309: b_ij_2_2 = 0
_C31: - c_j_1 + 8 z_ikt_1_BELEM_8 + 8 z_ikt_1_QUITO_8 <= 0
_C310: - a_ij_1_1 - d_ijk_1_1_QUITO - 0.001 e_ijlk_1_1_1_QUITO
 - 0.001 e_ijlk_1_1_2_QUITO + y_ijk_1_1_QUITO >= -2
_C311: - a_ij_1_1 - d_ijk_1_1_BELEM - 0.001 e_ijlk_1_1_1_BELEM
 - 0.001 e_ijlk_1_1_2_BELEM + y_ijk_1_1_BELEM >= -2
_C312: - a_ij_1_2 - d_ijk_1_2_QUITO - 0.001 e_ijlk_1_2_1_QUITO
 - 0.001 e_ijlk_1_2_2_QUITO + y_ijk_1_2_QUITO >= -2
_C313: - a_ij_1_2 - d_ijk_1_2_BELEM - 0.001 e_ijlk_1_2_1_BELEM
 - 0.001 e_ijlk_1_2_2_BELEM + y_ijk_1_2_BELEM >= -2
_C314: - a_ij_2_1 - d_ijk_2_1_QUITO - 0.001 e_ijlk_2_1_1_QUITO
 - 0.001 e_ijlk_2_1_2_QUITO + y_ijk_2_1_QUITO >= -2
_C315: - a_ij_2_1 - d_ijk_2_1_BELEM - 0.001 e_ijlk_2_1_1_BELEM
 - 0.001 e_ijlk_2_1_2_BELEM + y_ijk_2_1_BELEM >= -2
_C316: - a_ij_2_2 - d_ijk_2_2_QUITO - 0.001 e_ijlk_2_2_1_QUITO
 - 0.001 e_ijlk_2_2_2_QUITO + y_ijk_2_2_QUITO >= -2
_C317: - a_ij_2_2 - d_ijk_2_2_BELEM - 0.001 e_ijlk_2_2_1_BELEM
 - 0.001 e_ijlk_2_2_2_BELEM + y_ijk_2_2_BELEM >= -2
_C32: z_ikt_1_BELEM_8 + z_ikt_1_QUITO_8 <= 1
_C33: s_j_1 + 992 z_ikt_1_BELEM_8 + 992 z_ikt_1_QUITO_8 <= 1000
_C34: - c_j_1 + 9 z_ikt_1_BELEM_9 + 9 z_ikt_1_QUITO_9 <= 0
_C35: z_ikt_1_BELEM_9 + z_ikt_1_QUITO_9 <= 1
_C36: s_j_1 + 991 z_ikt_1_BELEM_9 + 991 z_ikt_1_QUITO_9 <= 1000
_C37: - c_j_1 + 10 z_ikt_1_BELEM_10 + 10 z_ikt_1_QUITO_10 <= 0
_C38: z_ikt_1_BELEM_10 + z_ikt_1_QUITO_10 <= 1
_C39: s_j_1 + 990 z_ikt_1_BELEM_10 + 990 z_ikt_1_QUITO_10 <= 1000
_C4: c_j_1 - s_j_1 - z_ikt_1_BELEM_0 - z_ikt_1_BELEM_1 - z_ikt_1_BELEM_10
 - z_ikt_1_BELEM_11 - z_ikt_1_BELEM_12 - z_ikt_1_BELEM_13 - z_ikt_1_BELEM_14
 - z_ikt_1_BELEM_15 - z_ikt_1_BELEM_16 - z_ikt_1_BELEM_17 - z_ikt_1_BELEM_18
 - z_ikt_1_BELEM_19 - z_ikt_1_BELEM_2 - z_ikt_1_BELEM_20 - z_ikt_1_BELEM_21
 - z_ikt_1_BELEM_22 - z_ikt_1_BELEM_23 - z_ikt_1_BELEM_24 - z_ikt_1_BELEM_25
 - z_ikt_1_BELEM_26 - z_ikt_1_BELEM_27 - z_ikt_1_BELEM_28 - z_ikt_1_BELEM_29
 - z_ikt_1_BELEM_3 - z_ikt_1_BELEM_30 - z_ikt_1_BELEM_31 - z_ikt_1_BELEM_4
 - z_ikt_1_BELEM_5 - z_ikt_1_BELEM_6 - z_ikt_1_BELEM_7 - z_ikt_1_BELEM_8
 - z_ikt_1_BELEM_9 - z_ikt_1_QUITO_0 - z_ikt_1_QUITO_1 - z_ikt_1_QUITO_10
 - z_ikt_1_QUITO_11 - z_ikt_1_QUITO_12 - z_ikt_1_QUITO_13 - z_ikt_1_QUITO_14
 - z_ikt_1_QUITO_15 - z_ikt_1_QUITO_16 - z_ikt_1_QUITO_17 - z_ikt_1_QUITO_18
 - z_ikt_1_QUITO_19 - z_ikt_1_QUITO_2 - z_ikt_1_QUITO_20 - z_ikt_1_QUITO_21
 - z_ikt_1_QUITO_22 - z_ikt_1_QUITO_23 - z_ikt_1_QUITO_24 - z_ikt_1_QUITO_25
 - z_ikt_1_QUITO_26 - z_ikt_1_QUITO_27 - z_ikt_1_QUITO_28 - z_ikt_1_QUITO_29
 - z_ikt_1_QUITO_3 - z_ikt_1_QUITO_30 - z_ikt_1_QUITO_31 - z_ikt_1_QUITO_4
 - z_ikt_1_QUITO_5 - z_ikt_1_QUITO_6 - z_ikt_1_QUITO_7 - z_ikt_1_QUITO_8
 - z_ikt_1_QUITO_9 = -1
_C40: - c_j_1 + 11 z_ikt_1_BELEM_11 + 11 z_ikt_1_QUITO_11 <= 0
_C41: z_ikt_1_BELEM_11 + z_ikt_1_QUITO_11 <= 1
_C42: s_j_1 + 989 z_ikt_1_BELEM_11 + 989 z_ikt_1_QUITO_11 <= 1000
_C43: - c_j_1 + 12 z_ikt_1_BELEM_12 + 12 z_ikt_1_QUITO_12 <= 0
_C44: z_ikt_1_BELEM_12 + z_ikt_1_QUITO_12 <= 1
_C45: s_j_1 + 988 z_ikt_1_BELEM_12 + 988 z_ikt_1_QUITO_12 <= 1000
_C46: - c_j_1 + 13 z_ikt_1_BELEM_13 + 13 z_ikt_1_QUITO_13 <= 0
_C47: z_ikt_1_BELEM_13 + z_ikt_1_QUITO_13 <= 1
_C48: s_j_1 + 987 z_ikt_1_BELEM_13 + 987 z_ikt_1_QUITO_13 <= 1000
_C49: - c_j_1 + 14 z_ikt_1_BELEM_14 + 14 z_ikt_1_QUITO_14 <= 0
_C5: - 1000 x_ik_1_QUITO + z_ikt_1_QUITO_0 + z_ikt_1_QUITO_1
 + z_ikt_1_QUITO_10 + z_ikt_1_QUITO_11 + z_ikt_1_QUITO_12 + z_ikt_1_QUITO_13
 + z_ikt_1_QUITO_14 + z_ikt_1_QUITO_15 + z_ikt_1_QUITO_16 + z_ikt_1_QUITO_17
 + z_ikt_1_QUITO_18 + z_ikt_1_QUITO_19 + z_ikt_1_QUITO_2 + z_ikt_1_QUITO_20
 + z_ikt_1_QUITO_21 + z_ikt_1_QUITO_22 + z_ikt_1_QUITO_23 + z_ikt_1_QUITO_24
 + z_ikt_1_QUITO_25 + z_ikt_1_QUITO_26 + z_ikt_1_QUITO_27 + z_ikt_1_QUITO_28
 + z_ikt_1_QUITO_29 + z_ikt_1_QUITO_3 + z_ikt_1_QUITO_30 + z_ikt_1_QUITO_31
 + z_ikt_1_QUITO_4 + z_ikt_1_QUITO_5 + z_ikt_1_QUITO_6 + z_ikt_1_QUITO_7
 + z_ikt_1_QUITO_8 + z_ikt_1_QUITO_9 <= 0
_C50: z_ikt_1_BELEM_14 + z_ikt_1_QUITO_14 <= 1
_C51: s_j_1 + 986 z_ikt_1_BELEM_14 + 986 z_ikt_1_QUITO_14 <= 1000
_C52: - c_j_1 + 15 z_ikt_1_BELEM_15 + 15 z_ikt_1_QUITO_15 <= 0
_C53: z_ikt_1_BELEM_15 + z_ikt_1_QUITO_15 <= 1
_C54: s_j_1 + 985 z_ikt_1_BELEM_15 + 985 z_ikt_1_QUITO_15 <= 1000
_C55: - c_j_1 + 16 z_ikt_1_BELEM_16 + 16 z_ikt_1_QUITO_16 <= 0
_C56: z_ikt_1_BELEM_16 + z_ikt_1_QUITO_16 <= 1
_C57: s_j_1 + 984 z_ikt_1_BELEM_16 + 984 z_ikt_1_QUITO_16 <= 1000
_C58: - c_j_1 + 17 z_ikt_1_BELEM_17 + 17 z_ikt_1_QUITO_17 <= 0
_C59: z_ikt_1_BELEM_17 + z_ikt_1_QUITO_17 <= 1
_C6: - 1000 x_ik_1_BELEM + z_ikt_1_BELEM_0 + z_ikt_1_BELEM_1
 + z_ikt_1_BELEM_10 + z_ikt_1_BELEM_11 + z_ikt_1_BELEM_12 + z_ikt_1_BELEM_13
 + z_ikt_1_BELEM_14 + z_ikt_1_BELEM_15 + z_ikt_1_BELEM_16 + z_ikt_1_BELEM_17
 + z_ikt_1_BELEM_18 + z_ikt_1_BELEM_19 + z_ikt_1_BELEM_2 + z_ikt_1_BELEM_20
 + z_ikt_1_BELEM_21 + z_ikt_1_BELEM_22 + z_ikt_1_BELEM_23 + z_ikt_1_BELEM_24
 + z_ikt_1_BELEM_25 + z_ikt_1_BELEM_26 + z_ikt_1_BELEM_27 + z_ikt_1_BELEM_28
 + z_ikt_1_BELEM_29 + z_ikt_1_BELEM_3 + z_ikt_1_BELEM_30 + z_ikt_1_BELEM_31
 + z_ikt_1_BELEM_4 + z_ikt_1_BELEM_5 + z_ikt_1_BELEM_6 + z_ikt_1_BELEM_7
 + z_ikt_1_BELEM_8 + z_ikt_1_BELEM_9 <= 0
_C60: s_j_1 + 983 z_ikt_1_BELEM_17 + 983 z_ikt_1_QUITO_17 <= 1000
_C61: - c_j_1 + 18 z_ikt_1_BELEM_18 + 18 z_ikt_1_QUITO_18 <= 0
_C62: z_ikt_1_BELEM_18 + z_ikt_1_QUITO_18 <= 1
_C63: s_j_1 + 982 z_ikt_1_BELEM_18 + 982 z_ikt_1_QUITO_18 <= 1000
_C64: - c_j_1 + 19 z_ikt_1_BELEM_19 + 19 z_ikt_1_QUITO_19 <= 0
_C65: z_ikt_1_BELEM_19 + z_ikt_1_QUITO_19 <= 1
_C66: s_j_1 + 981 z_ikt_1_BELEM_19 + 981 z_ikt_1_QUITO_19 <= 1000
_C67: - c_j_1 + 20 z_ikt_1_BELEM_20 + 20 z_ikt_1_QUITO_20 <= 0
_C68: z_ikt_1_BELEM_20 + z_ikt_1_QUITO_20 <= 1
_C69: s_j_1 + 980 z_ikt_1_BELEM_20 + 980 z_ikt_1_QUITO_20 <= 1000
_C7: - c_j_1 <= 0
_C70: - c_j_1 + 21 z_ikt_1_BELEM_21 + 21 z_ikt_1_QUITO_21 <= 0
_C71: z_ikt_1_BELEM_21 + z_ikt_1_QUITO_21 <= 1
_C72: s_j_1 + 979 z_ikt_1_BELEM_21 + 979 z_ikt_1_QUITO_21 <= 1000
_C73: - c_j_1 + 22 z_ikt_1_BELEM_22 + 22 z_ikt_1_QUITO_22 <= 0
_C74: z_ikt_1_BELEM_22 + z_ikt_1_QUITO_22 <= 1
_C75: s_j_1 + 978 z_ikt_1_BELEM_22 + 978 z_ikt_1_QUITO_22 <= 1000
_C76: - c_j_1 + 23 z_ikt_1_BELEM_23 + 23 z_ikt_1_QUITO_23 <= 0
_C77: z_ikt_1_BELEM_23 + z_ikt_1_QUITO_23 <= 1
_C78: s_j_1 + 977 z_ikt_1_BELEM_23 + 977 z_ikt_1_QUITO_23 <= 1000
_C79: - c_j_1 + 24 z_ikt_1_BELEM_24 + 24 z_ikt_1_QUITO_24 <= 0
_C8: z_ikt_1_BELEM_0 + z_ikt_1_QUITO_0 <= 1
_C80: z_ikt_1_BELEM_24 + z_ikt_1_QUITO_24 <= 1
_C81: s_j_1 + 976 z_ikt_1_BELEM_24 + 976 z_ikt_1_QUITO_24 <= 1000
_C82: - c_j_1 + 25 z_ikt_1_BELEM_25 + 25 z_ikt_1_QUITO_25 <= 0
_C83: z_ikt_1_BELEM_25 + z_ikt_1_QUITO_25 <= 1
_C84: s_j_1 + 975 z_ikt_1_BELEM_25 + 975 z_ikt_1_QUITO_25 <= 1000
_C85: - c_j_1 + 26 z_ikt_1_BELEM_26 + 26 z_ikt_1_QUITO_26 <= 0
_C86: z_ikt_1_BELEM_26 + z_ikt_1_QUITO_26 <= 1
_C87: s_j_1 + 974 z_ikt_1_BELEM_26 + 974 z_ikt_1_QUITO_26 <= 1000
_C88: - c_j_1 + 27 z_ikt_1_BELEM_27 + 27 z_ikt_1_QUITO_27 <= 0
_C89: z_ikt_1_BELEM_27 + z_ikt_1_QUITO_27 <= 1
_C9: s_j_1 + 1000 z_ikt_1_BELEM_0 + 1000 z_ikt_1_QUITO_0 <= 1000
_C90: s_j_1 + 973 z_ikt_1_BELEM_27 + 973 z_ikt_1_QUITO_27 <= 1000
_C91: - c_j_1 + 28 z_ikt_1_BELEM_28 + 28 z_ikt_1_QUITO_28 <= 0
_C92: z_ikt_1_BELEM_28 + z_ikt_1_QUITO_28 <= 1
_C93: s_j_1 + 972 z_ikt_1_BELEM_28 + 972 z_ikt_1_QUITO_28 <= 1000
_C94: - c_j_1 + 29 z_ikt_1_BELEM_29 + 29 z_ikt_1_QUITO_29 <= 0
_C95: z_ikt_1_BELEM_29 + z_ikt_1_QUITO_29 <= 1
_C96: s_j_1 + 971 z_ikt_1_BELEM_29 + 971 z_ikt_1_QUITO_29 <= 1000
_C97: - c_j_1 + 30 z_ikt_1_BELEM_30 + 30 z_ikt_1_QUITO_30 <= 0
_C98: z_ikt_1_BELEM_30 + z_ikt_1_QUITO_30 <= 1
_C99: s_j_1 + 970 z_ikt_1_BELEM_30 + 970 z_ikt_1_QUITO_30 <= 1000
Binaries
a_ij_1_1
a_ij_1_2
a_ij_2_1
a_ij_2_2
b_ij_1_1
b_ij_1_2
b_ij_2_1
b_ij_2_2
d_ijk_1_1_BELEM
d_ijk_1_1_QUITO
d_ijk_1_2_BELEM
d_ijk_1_2_QUITO
d_ijk_2_1_BELEM
d_ijk_2_1_QUITO
d_ijk_2_2_BELEM
d_ijk_2_2_QUITO
e_ijlk_1_1_1_BELEM
e_ijlk_1_1_1_QUITO
e_ijlk_1_1_2_BELEM
e_ijlk_1_1_2_QUITO
e_ijlk_1_2_1_BELEM
e_ijlk_1_2_1_QUITO
e_ijlk_1_2_2_BELEM
e_ijlk_1_2_2_QUITO
e_ijlk_2_1_1_BELEM
e_ijlk_2_1_1_QUITO
e_ijlk_2_1_2_BELEM
e_ijlk_2_1_2_QUITO
e_ijlk_2_2_1_BELEM
e_ijlk_2_2_1_QUITO
e_ijlk_2_2_2_BELEM
e_ijlk_2_2_2_QUITO
x_ik_1_BELEM
x_ik_1_QUITO
x_ik_2_BELEM
x_ik_2_QUITO
y_ijk_0_1_BELEM
y_ijk_0_1_QUITO
y_ijk_0_2_BELEM
y_ijk_0_2_QUITO
y_ijk_1_0_BELEM
y_ijk_1_0_QUITO
y_ijk_1_1_BELEM
y_ijk_1_1_QUITO
y_ijk_1_2_BELEM
y_ijk_1_2_QUITO
y_ijk_2_0_BELEM
y_ijk_2_0_QUITO
y_ijk_2_1_BELEM
y_ijk_2_1_QUITO
y_ijk_2_2_BELEM
y_ijk_2_2_QUITO
z_ikt_1_BELEM_0
z_ikt_1_BELEM_1
z_ikt_1_BELEM_10
z_ikt_1_BELEM_11
z_ikt_1_BELEM_12
z_ikt_1_BELEM_13
z_ikt_1_BELEM_14
z_ikt_1_BELEM_15
z_ikt_1_BELEM_16
z_ikt_1_BELEM_17
z_ikt_1_BELEM_18
z_ikt_1_BELEM_19
z_ikt_1_BELEM_2
z_ikt_1_BELEM_20
z_ikt_1_BELEM_21
z_ikt_1_BELEM_22
z_ikt_1_BELEM_23
z_ikt_1_BELEM_24
z_ikt_1_BELEM_25
z_ikt_1_BELEM_26
z_ikt_1_BELEM_27
z_ikt_1_BELEM_28
z_ikt_1_BELEM_29
z_ikt_1_BELEM_3
z_ikt_1_BELEM_30
z_ikt_1_BELEM_31
z_ikt_1_BELEM_4
z_ikt_1_BELEM_5
z_ikt_1_BELEM_6
z_ikt_1_BELEM_7
z_ikt_1_BELEM_8
z_ikt_1_BELEM_9
z_ikt_1_QUITO_0
z_ikt_1_QUITO_1
z_ikt_1_QUITO_10
z_ikt_1_QUITO_11
z_ikt_1_QUITO_12
z_ikt_1_QUITO_13
z_ikt_1_QUITO_14
z_ikt_1_QUITO_15
z_ikt_1_QUITO_16
z_ikt_1_QUITO_17
z_ikt_1_QUITO_18
z_ikt_1_QUITO_19
z_ikt_1_QUITO_2
z_ikt_1_QUITO_20
z_ikt_1_QUITO_21
z_ikt_1_QUITO_22
z_ikt_1_QUITO_23
z_ikt_1_QUITO_24
z_ikt_1_QUITO_25
z_ikt_1_QUITO_26
z_ikt_1_QUITO_27
z_ikt_1_QUITO_28
z_ikt_1_QUITO_29
z_ikt_1_QUITO_3
z_ikt_1_QUITO_30
z_ikt_1_QUITO_31
z_ikt_1_QUITO_4
z_ikt_1_QUITO_5
z_ikt_1_QUITO_6
z_ikt_1_QUITO_7
z_ikt_1_QUITO_8
z_ikt_1_QUITO_9
z_ikt_2_BELEM_0
z_ikt_2_BELEM_1
z_ikt_2_BELEM_10
z_ikt_2_BELEM_11
z_ikt_2_BELEM_12
z_ikt_2_BELEM_13
z_ikt_2_BELEM_14
z_ikt_2_BELEM_15
z_ikt_2_BELEM_16
z_ikt_2_BELEM_17
z_ikt_2_BELEM_18
z_ikt_2_BELEM_19
z_ikt_2_BELEM_2
z_ikt_2_BELEM_20
z_ikt_2_BELEM_21
z_ikt_2_BELEM_22
z_ikt_2_BELEM_23
z_ikt_2_BELEM_24
z_ikt_2_BELEM_25
z_ikt_2_BELEM_26
z_ikt_2_BELEM_27
z_ikt_2_BELEM_28
z_ikt_2_BELEM_29
z_ikt_2_BELEM_3
z_ikt_2_BELEM_30
z_ikt_2_BELEM_31
z_ikt_2_BELEM_4
z_ikt_2_BELEM_5
z_ikt_2_BELEM_6
z_ikt_2_BELEM_7
z_ikt_2_BELEM_8
z_ikt_2_BELEM_9
z_ikt_2_QUITO_0
z_ikt_2_QUITO_1
z_ikt_2_QUITO_10
z_ikt_2_QUITO_11
z_ikt_2_QUITO_12
z_ikt_2_QUITO_13
z_ikt_2_QUITO_14
z_ikt_2_QUITO_15
z_ikt_2_QUITO_16
z_ikt_2_QUITO_17
z_ikt_2_QUITO_18
z_ikt_2_QUITO_19
z_ikt_2_QUITO_2
z_ikt_2_QUITO_20
z_ikt_2_QUITO_21
z_ikt_2_QUITO_22
z_ikt_2_QUITO_23
z_ikt_2_QUITO_24
z_ikt_2_QUITO_25
z_ikt_2_QUITO_26
z_ikt_2_QUITO_27
z_ikt_2_QUITO_28
z_ikt_2_QUITO_29
z_ikt_2_QUITO_3
z_ikt_2_QUITO_30
z_ikt_2_QUITO_31
z_ikt_2_QUITO_4
z_ikt_2_QUITO_5
z_ikt_2_QUITO_6
z_ikt_2_QUITO_7
z_ikt_2_QUITO_8
z_ikt_2_QUITO_9
End
