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
_C204: c_j_3 - makespan <= 0
_C205: x_ik_3_BELEM + x_ik_3_QUITO = 1
_C206: c_j_3 - s_j_3 - z_ikt_3_BELEM_0 - z_ikt_3_BELEM_1 - z_ikt_3_BELEM_10
 - z_ikt_3_BELEM_11 - z_ikt_3_BELEM_12 - z_ikt_3_BELEM_13 - z_ikt_3_BELEM_14
 - z_ikt_3_BELEM_15 - z_ikt_3_BELEM_16 - z_ikt_3_BELEM_17 - z_ikt_3_BELEM_18
 - z_ikt_3_BELEM_19 - z_ikt_3_BELEM_2 - z_ikt_3_BELEM_20 - z_ikt_3_BELEM_21
 - z_ikt_3_BELEM_22 - z_ikt_3_BELEM_23 - z_ikt_3_BELEM_24 - z_ikt_3_BELEM_25
 - z_ikt_3_BELEM_26 - z_ikt_3_BELEM_27 - z_ikt_3_BELEM_28 - z_ikt_3_BELEM_29
 - z_ikt_3_BELEM_3 - z_ikt_3_BELEM_30 - z_ikt_3_BELEM_31 - z_ikt_3_BELEM_4
 - z_ikt_3_BELEM_5 - z_ikt_3_BELEM_6 - z_ikt_3_BELEM_7 - z_ikt_3_BELEM_8
 - z_ikt_3_BELEM_9 - z_ikt_3_QUITO_0 - z_ikt_3_QUITO_1 - z_ikt_3_QUITO_10
 - z_ikt_3_QUITO_11 - z_ikt_3_QUITO_12 - z_ikt_3_QUITO_13 - z_ikt_3_QUITO_14
 - z_ikt_3_QUITO_15 - z_ikt_3_QUITO_16 - z_ikt_3_QUITO_17 - z_ikt_3_QUITO_18
 - z_ikt_3_QUITO_19 - z_ikt_3_QUITO_2 - z_ikt_3_QUITO_20 - z_ikt_3_QUITO_21
 - z_ikt_3_QUITO_22 - z_ikt_3_QUITO_23 - z_ikt_3_QUITO_24 - z_ikt_3_QUITO_25
 - z_ikt_3_QUITO_26 - z_ikt_3_QUITO_27 - z_ikt_3_QUITO_28 - z_ikt_3_QUITO_29
 - z_ikt_3_QUITO_3 - z_ikt_3_QUITO_30 - z_ikt_3_QUITO_31 - z_ikt_3_QUITO_4
 - z_ikt_3_QUITO_5 - z_ikt_3_QUITO_6 - z_ikt_3_QUITO_7 - z_ikt_3_QUITO_8
 - z_ikt_3_QUITO_9 = -1
_C207: - 1000 x_ik_3_QUITO + z_ikt_3_QUITO_0 + z_ikt_3_QUITO_1
 + z_ikt_3_QUITO_10 + z_ikt_3_QUITO_11 + z_ikt_3_QUITO_12 + z_ikt_3_QUITO_13
 + z_ikt_3_QUITO_14 + z_ikt_3_QUITO_15 + z_ikt_3_QUITO_16 + z_ikt_3_QUITO_17
 + z_ikt_3_QUITO_18 + z_ikt_3_QUITO_19 + z_ikt_3_QUITO_2 + z_ikt_3_QUITO_20
 + z_ikt_3_QUITO_21 + z_ikt_3_QUITO_22 + z_ikt_3_QUITO_23 + z_ikt_3_QUITO_24
 + z_ikt_3_QUITO_25 + z_ikt_3_QUITO_26 + z_ikt_3_QUITO_27 + z_ikt_3_QUITO_28
 + z_ikt_3_QUITO_29 + z_ikt_3_QUITO_3 + z_ikt_3_QUITO_30 + z_ikt_3_QUITO_31
 + z_ikt_3_QUITO_4 + z_ikt_3_QUITO_5 + z_ikt_3_QUITO_6 + z_ikt_3_QUITO_7
 + z_ikt_3_QUITO_8 + z_ikt_3_QUITO_9 <= 0
_C208: - 1000 x_ik_3_BELEM + z_ikt_3_BELEM_0 + z_ikt_3_BELEM_1
 + z_ikt_3_BELEM_10 + z_ikt_3_BELEM_11 + z_ikt_3_BELEM_12 + z_ikt_3_BELEM_13
 + z_ikt_3_BELEM_14 + z_ikt_3_BELEM_15 + z_ikt_3_BELEM_16 + z_ikt_3_BELEM_17
 + z_ikt_3_BELEM_18 + z_ikt_3_BELEM_19 + z_ikt_3_BELEM_2 + z_ikt_3_BELEM_20
 + z_ikt_3_BELEM_21 + z_ikt_3_BELEM_22 + z_ikt_3_BELEM_23 + z_ikt_3_BELEM_24
 + z_ikt_3_BELEM_25 + z_ikt_3_BELEM_26 + z_ikt_3_BELEM_27 + z_ikt_3_BELEM_28
 + z_ikt_3_BELEM_29 + z_ikt_3_BELEM_3 + z_ikt_3_BELEM_30 + z_ikt_3_BELEM_31
 + z_ikt_3_BELEM_4 + z_ikt_3_BELEM_5 + z_ikt_3_BELEM_6 + z_ikt_3_BELEM_7
 + z_ikt_3_BELEM_8 + z_ikt_3_BELEM_9 <= 0
_C209: - c_j_3 <= 0
_C21: s_j_1 + 996 z_ikt_1_BELEM_4 + 996 z_ikt_1_QUITO_4 <= 1000
_C210: z_ikt_3_BELEM_0 + z_ikt_3_QUITO_0 <= 1
_C211: s_j_3 + 1000 z_ikt_3_BELEM_0 + 1000 z_ikt_3_QUITO_0 <= 1000
_C212: - c_j_3 + z_ikt_3_BELEM_1 + z_ikt_3_QUITO_1 <= 0
_C213: z_ikt_3_BELEM_1 + z_ikt_3_QUITO_1 <= 1
_C214: s_j_3 + 999 z_ikt_3_BELEM_1 + 999 z_ikt_3_QUITO_1 <= 1000
_C215: - c_j_3 + 2 z_ikt_3_BELEM_2 + 2 z_ikt_3_QUITO_2 <= 0
_C216: z_ikt_3_BELEM_2 + z_ikt_3_QUITO_2 <= 1
_C217: s_j_3 + 998 z_ikt_3_BELEM_2 + 998 z_ikt_3_QUITO_2 <= 1000
_C218: - c_j_3 + 3 z_ikt_3_BELEM_3 + 3 z_ikt_3_QUITO_3 <= 0
_C219: z_ikt_3_BELEM_3 + z_ikt_3_QUITO_3 <= 1
_C22: - c_j_1 + 5 z_ikt_1_BELEM_5 + 5 z_ikt_1_QUITO_5 <= 0
_C220: s_j_3 + 997 z_ikt_3_BELEM_3 + 997 z_ikt_3_QUITO_3 <= 1000
_C221: - c_j_3 + 4 z_ikt_3_BELEM_4 + 4 z_ikt_3_QUITO_4 <= 0
_C222: z_ikt_3_BELEM_4 + z_ikt_3_QUITO_4 <= 1
_C223: s_j_3 + 996 z_ikt_3_BELEM_4 + 996 z_ikt_3_QUITO_4 <= 1000
_C224: - c_j_3 + 5 z_ikt_3_BELEM_5 + 5 z_ikt_3_QUITO_5 <= 0
_C225: z_ikt_3_BELEM_5 + z_ikt_3_QUITO_5 <= 1
_C226: s_j_3 + 995 z_ikt_3_BELEM_5 + 995 z_ikt_3_QUITO_5 <= 1000
_C227: - c_j_3 + 6 z_ikt_3_BELEM_6 + 6 z_ikt_3_QUITO_6 <= 0
_C228: z_ikt_3_BELEM_6 + z_ikt_3_QUITO_6 <= 1
_C229: s_j_3 + 994 z_ikt_3_BELEM_6 + 994 z_ikt_3_QUITO_6 <= 1000
_C23: z_ikt_1_BELEM_5 + z_ikt_1_QUITO_5 <= 1
_C230: - c_j_3 + 7 z_ikt_3_BELEM_7 + 7 z_ikt_3_QUITO_7 <= 0
_C231: z_ikt_3_BELEM_7 + z_ikt_3_QUITO_7 <= 1
_C232: s_j_3 + 993 z_ikt_3_BELEM_7 + 993 z_ikt_3_QUITO_7 <= 1000
_C233: - c_j_3 + 8 z_ikt_3_BELEM_8 + 8 z_ikt_3_QUITO_8 <= 0
_C234: z_ikt_3_BELEM_8 + z_ikt_3_QUITO_8 <= 1
_C235: s_j_3 + 992 z_ikt_3_BELEM_8 + 992 z_ikt_3_QUITO_8 <= 1000
_C236: - c_j_3 + 9 z_ikt_3_BELEM_9 + 9 z_ikt_3_QUITO_9 <= 0
_C237: z_ikt_3_BELEM_9 + z_ikt_3_QUITO_9 <= 1
_C238: s_j_3 + 991 z_ikt_3_BELEM_9 + 991 z_ikt_3_QUITO_9 <= 1000
_C239: - c_j_3 + 10 z_ikt_3_BELEM_10 + 10 z_ikt_3_QUITO_10 <= 0
_C24: s_j_1 + 995 z_ikt_1_BELEM_5 + 995 z_ikt_1_QUITO_5 <= 1000
_C240: z_ikt_3_BELEM_10 + z_ikt_3_QUITO_10 <= 1
_C241: s_j_3 + 990 z_ikt_3_BELEM_10 + 990 z_ikt_3_QUITO_10 <= 1000
_C242: - c_j_3 + 11 z_ikt_3_BELEM_11 + 11 z_ikt_3_QUITO_11 <= 0
_C243: z_ikt_3_BELEM_11 + z_ikt_3_QUITO_11 <= 1
_C244: s_j_3 + 989 z_ikt_3_BELEM_11 + 989 z_ikt_3_QUITO_11 <= 1000
_C245: - c_j_3 + 12 z_ikt_3_BELEM_12 + 12 z_ikt_3_QUITO_12 <= 0
_C246: z_ikt_3_BELEM_12 + z_ikt_3_QUITO_12 <= 1
_C247: s_j_3 + 988 z_ikt_3_BELEM_12 + 988 z_ikt_3_QUITO_12 <= 1000
_C248: - c_j_3 + 13 z_ikt_3_BELEM_13 + 13 z_ikt_3_QUITO_13 <= 0
_C249: z_ikt_3_BELEM_13 + z_ikt_3_QUITO_13 <= 1
_C25: - c_j_1 + 6 z_ikt_1_BELEM_6 + 6 z_ikt_1_QUITO_6 <= 0
_C250: s_j_3 + 987 z_ikt_3_BELEM_13 + 987 z_ikt_3_QUITO_13 <= 1000
_C251: - c_j_3 + 14 z_ikt_3_BELEM_14 + 14 z_ikt_3_QUITO_14 <= 0
_C252: z_ikt_3_BELEM_14 + z_ikt_3_QUITO_14 <= 1
_C253: s_j_3 + 986 z_ikt_3_BELEM_14 + 986 z_ikt_3_QUITO_14 <= 1000
_C254: - c_j_3 + 15 z_ikt_3_BELEM_15 + 15 z_ikt_3_QUITO_15 <= 0
_C255: z_ikt_3_BELEM_15 + z_ikt_3_QUITO_15 <= 1
_C256: s_j_3 + 985 z_ikt_3_BELEM_15 + 985 z_ikt_3_QUITO_15 <= 1000
_C257: - c_j_3 + 16 z_ikt_3_BELEM_16 + 16 z_ikt_3_QUITO_16 <= 0
_C258: z_ikt_3_BELEM_16 + z_ikt_3_QUITO_16 <= 1
_C259: s_j_3 + 984 z_ikt_3_BELEM_16 + 984 z_ikt_3_QUITO_16 <= 1000
_C26: z_ikt_1_BELEM_6 + z_ikt_1_QUITO_6 <= 1
_C260: - c_j_3 + 17 z_ikt_3_BELEM_17 + 17 z_ikt_3_QUITO_17 <= 0
_C261: z_ikt_3_BELEM_17 + z_ikt_3_QUITO_17 <= 1
_C262: s_j_3 + 983 z_ikt_3_BELEM_17 + 983 z_ikt_3_QUITO_17 <= 1000
_C263: - c_j_3 + 18 z_ikt_3_BELEM_18 + 18 z_ikt_3_QUITO_18 <= 0
_C264: z_ikt_3_BELEM_18 + z_ikt_3_QUITO_18 <= 1
_C265: s_j_3 + 982 z_ikt_3_BELEM_18 + 982 z_ikt_3_QUITO_18 <= 1000
_C266: - c_j_3 + 19 z_ikt_3_BELEM_19 + 19 z_ikt_3_QUITO_19 <= 0
_C267: z_ikt_3_BELEM_19 + z_ikt_3_QUITO_19 <= 1
_C268: s_j_3 + 981 z_ikt_3_BELEM_19 + 981 z_ikt_3_QUITO_19 <= 1000
_C269: - c_j_3 + 20 z_ikt_3_BELEM_20 + 20 z_ikt_3_QUITO_20 <= 0
_C27: s_j_1 + 994 z_ikt_1_BELEM_6 + 994 z_ikt_1_QUITO_6 <= 1000
_C270: z_ikt_3_BELEM_20 + z_ikt_3_QUITO_20 <= 1
_C271: s_j_3 + 980 z_ikt_3_BELEM_20 + 980 z_ikt_3_QUITO_20 <= 1000
_C272: - c_j_3 + 21 z_ikt_3_BELEM_21 + 21 z_ikt_3_QUITO_21 <= 0
_C273: z_ikt_3_BELEM_21 + z_ikt_3_QUITO_21 <= 1
_C274: s_j_3 + 979 z_ikt_3_BELEM_21 + 979 z_ikt_3_QUITO_21 <= 1000
_C275: - c_j_3 + 22 z_ikt_3_BELEM_22 + 22 z_ikt_3_QUITO_22 <= 0
_C276: z_ikt_3_BELEM_22 + z_ikt_3_QUITO_22 <= 1
_C277: s_j_3 + 978 z_ikt_3_BELEM_22 + 978 z_ikt_3_QUITO_22 <= 1000
_C278: - c_j_3 + 23 z_ikt_3_BELEM_23 + 23 z_ikt_3_QUITO_23 <= 0
_C279: z_ikt_3_BELEM_23 + z_ikt_3_QUITO_23 <= 1
_C28: - c_j_1 + 7 z_ikt_1_BELEM_7 + 7 z_ikt_1_QUITO_7 <= 0
_C280: s_j_3 + 977 z_ikt_3_BELEM_23 + 977 z_ikt_3_QUITO_23 <= 1000
_C281: - c_j_3 + 24 z_ikt_3_BELEM_24 + 24 z_ikt_3_QUITO_24 <= 0
_C282: z_ikt_3_BELEM_24 + z_ikt_3_QUITO_24 <= 1
_C283: s_j_3 + 976 z_ikt_3_BELEM_24 + 976 z_ikt_3_QUITO_24 <= 1000
_C284: - c_j_3 + 25 z_ikt_3_BELEM_25 + 25 z_ikt_3_QUITO_25 <= 0
_C285: z_ikt_3_BELEM_25 + z_ikt_3_QUITO_25 <= 1
_C286: s_j_3 + 975 z_ikt_3_BELEM_25 + 975 z_ikt_3_QUITO_25 <= 1000
_C287: - c_j_3 + 26 z_ikt_3_BELEM_26 + 26 z_ikt_3_QUITO_26 <= 0
_C288: z_ikt_3_BELEM_26 + z_ikt_3_QUITO_26 <= 1
_C289: s_j_3 + 974 z_ikt_3_BELEM_26 + 974 z_ikt_3_QUITO_26 <= 1000
_C29: z_ikt_1_BELEM_7 + z_ikt_1_QUITO_7 <= 1
_C290: - c_j_3 + 27 z_ikt_3_BELEM_27 + 27 z_ikt_3_QUITO_27 <= 0
_C291: z_ikt_3_BELEM_27 + z_ikt_3_QUITO_27 <= 1
_C292: s_j_3 + 973 z_ikt_3_BELEM_27 + 973 z_ikt_3_QUITO_27 <= 1000
_C293: - c_j_3 + 28 z_ikt_3_BELEM_28 + 28 z_ikt_3_QUITO_28 <= 0
_C294: z_ikt_3_BELEM_28 + z_ikt_3_QUITO_28 <= 1
_C295: s_j_3 + 972 z_ikt_3_BELEM_28 + 972 z_ikt_3_QUITO_28 <= 1000
_C296: - c_j_3 + 29 z_ikt_3_BELEM_29 + 29 z_ikt_3_QUITO_29 <= 0
_C297: z_ikt_3_BELEM_29 + z_ikt_3_QUITO_29 <= 1
_C298: s_j_3 + 971 z_ikt_3_BELEM_29 + 971 z_ikt_3_QUITO_29 <= 1000
_C299: - c_j_3 + 30 z_ikt_3_BELEM_30 + 30 z_ikt_3_QUITO_30 <= 0
_C3: x_ik_1_BELEM + x_ik_1_QUITO = 1
_C30: s_j_1 + 993 z_ikt_1_BELEM_7 + 993 z_ikt_1_QUITO_7 <= 1000
_C300: z_ikt_3_BELEM_30 + z_ikt_3_QUITO_30 <= 1
_C301: s_j_3 + 970 z_ikt_3_BELEM_30 + 970 z_ikt_3_QUITO_30 <= 1000
_C302: - c_j_3 + 31 z_ikt_3_BELEM_31 + 31 z_ikt_3_QUITO_31 <= 0
_C303: z_ikt_3_BELEM_31 + z_ikt_3_QUITO_31 <= 1
_C304: s_j_3 + 969 z_ikt_3_BELEM_31 + 969 z_ikt_3_QUITO_31 <= 1000
_C305: c_j_4 - makespan <= 0
_C306: x_ik_4_BELEM + x_ik_4_QUITO = 1
_C307: c_j_4 - s_j_4 - z_ikt_4_BELEM_0 - z_ikt_4_BELEM_1 - z_ikt_4_BELEM_10
 - z_ikt_4_BELEM_11 - z_ikt_4_BELEM_12 - z_ikt_4_BELEM_13 - z_ikt_4_BELEM_14
 - z_ikt_4_BELEM_15 - z_ikt_4_BELEM_16 - z_ikt_4_BELEM_17 - z_ikt_4_BELEM_18
 - z_ikt_4_BELEM_19 - z_ikt_4_BELEM_2 - z_ikt_4_BELEM_20 - z_ikt_4_BELEM_21
 - z_ikt_4_BELEM_22 - z_ikt_4_BELEM_23 - z_ikt_4_BELEM_24 - z_ikt_4_BELEM_25
 - z_ikt_4_BELEM_26 - z_ikt_4_BELEM_27 - z_ikt_4_BELEM_28 - z_ikt_4_BELEM_29
 - z_ikt_4_BELEM_3 - z_ikt_4_BELEM_30 - z_ikt_4_BELEM_31 - z_ikt_4_BELEM_4
 - z_ikt_4_BELEM_5 - z_ikt_4_BELEM_6 - z_ikt_4_BELEM_7 - z_ikt_4_BELEM_8
 - z_ikt_4_BELEM_9 - z_ikt_4_QUITO_0 - z_ikt_4_QUITO_1 - z_ikt_4_QUITO_10
 - z_ikt_4_QUITO_11 - z_ikt_4_QUITO_12 - z_ikt_4_QUITO_13 - z_ikt_4_QUITO_14
 - z_ikt_4_QUITO_15 - z_ikt_4_QUITO_16 - z_ikt_4_QUITO_17 - z_ikt_4_QUITO_18
 - z_ikt_4_QUITO_19 - z_ikt_4_QUITO_2 - z_ikt_4_QUITO_20 - z_ikt_4_QUITO_21
 - z_ikt_4_QUITO_22 - z_ikt_4_QUITO_23 - z_ikt_4_QUITO_24 - z_ikt_4_QUITO_25
 - z_ikt_4_QUITO_26 - z_ikt_4_QUITO_27 - z_ikt_4_QUITO_28 - z_ikt_4_QUITO_29
 - z_ikt_4_QUITO_3 - z_ikt_4_QUITO_30 - z_ikt_4_QUITO_31 - z_ikt_4_QUITO_4
 - z_ikt_4_QUITO_5 - z_ikt_4_QUITO_6 - z_ikt_4_QUITO_7 - z_ikt_4_QUITO_8
 - z_ikt_4_QUITO_9 = -1
_C308: - 1000 x_ik_4_QUITO + z_ikt_4_QUITO_0 + z_ikt_4_QUITO_1
 + z_ikt_4_QUITO_10 + z_ikt_4_QUITO_11 + z_ikt_4_QUITO_12 + z_ikt_4_QUITO_13
 + z_ikt_4_QUITO_14 + z_ikt_4_QUITO_15 + z_ikt_4_QUITO_16 + z_ikt_4_QUITO_17
 + z_ikt_4_QUITO_18 + z_ikt_4_QUITO_19 + z_ikt_4_QUITO_2 + z_ikt_4_QUITO_20
 + z_ikt_4_QUITO_21 + z_ikt_4_QUITO_22 + z_ikt_4_QUITO_23 + z_ikt_4_QUITO_24
 + z_ikt_4_QUITO_25 + z_ikt_4_QUITO_26 + z_ikt_4_QUITO_27 + z_ikt_4_QUITO_28
 + z_ikt_4_QUITO_29 + z_ikt_4_QUITO_3 + z_ikt_4_QUITO_30 + z_ikt_4_QUITO_31
 + z_ikt_4_QUITO_4 + z_ikt_4_QUITO_5 + z_ikt_4_QUITO_6 + z_ikt_4_QUITO_7
 + z_ikt_4_QUITO_8 + z_ikt_4_QUITO_9 <= 0
_C309: - 1000 x_ik_4_BELEM + z_ikt_4_BELEM_0 + z_ikt_4_BELEM_1
 + z_ikt_4_BELEM_10 + z_ikt_4_BELEM_11 + z_ikt_4_BELEM_12 + z_ikt_4_BELEM_13
 + z_ikt_4_BELEM_14 + z_ikt_4_BELEM_15 + z_ikt_4_BELEM_16 + z_ikt_4_BELEM_17
 + z_ikt_4_BELEM_18 + z_ikt_4_BELEM_19 + z_ikt_4_BELEM_2 + z_ikt_4_BELEM_20
 + z_ikt_4_BELEM_21 + z_ikt_4_BELEM_22 + z_ikt_4_BELEM_23 + z_ikt_4_BELEM_24
 + z_ikt_4_BELEM_25 + z_ikt_4_BELEM_26 + z_ikt_4_BELEM_27 + z_ikt_4_BELEM_28
 + z_ikt_4_BELEM_29 + z_ikt_4_BELEM_3 + z_ikt_4_BELEM_30 + z_ikt_4_BELEM_31
 + z_ikt_4_BELEM_4 + z_ikt_4_BELEM_5 + z_ikt_4_BELEM_6 + z_ikt_4_BELEM_7
 + z_ikt_4_BELEM_8 + z_ikt_4_BELEM_9 <= 0
_C31: - c_j_1 + 8 z_ikt_1_BELEM_8 + 8 z_ikt_1_QUITO_8 <= 0
_C310: - c_j_4 <= 0
_C311: z_ikt_4_BELEM_0 + z_ikt_4_QUITO_0 <= 1
_C312: s_j_4 + 1000 z_ikt_4_BELEM_0 + 1000 z_ikt_4_QUITO_0 <= 1000
_C313: - c_j_4 + z_ikt_4_BELEM_1 + z_ikt_4_QUITO_1 <= 0
_C314: z_ikt_4_BELEM_1 + z_ikt_4_QUITO_1 <= 1
_C315: s_j_4 + 999 z_ikt_4_BELEM_1 + 999 z_ikt_4_QUITO_1 <= 1000
_C316: - c_j_4 + 2 z_ikt_4_BELEM_2 + 2 z_ikt_4_QUITO_2 <= 0
_C317: z_ikt_4_BELEM_2 + z_ikt_4_QUITO_2 <= 1
_C318: s_j_4 + 998 z_ikt_4_BELEM_2 + 998 z_ikt_4_QUITO_2 <= 1000
_C319: - c_j_4 + 3 z_ikt_4_BELEM_3 + 3 z_ikt_4_QUITO_3 <= 0
_C32: z_ikt_1_BELEM_8 + z_ikt_1_QUITO_8 <= 1
_C320: z_ikt_4_BELEM_3 + z_ikt_4_QUITO_3 <= 1
_C321: s_j_4 + 997 z_ikt_4_BELEM_3 + 997 z_ikt_4_QUITO_3 <= 1000
_C322: - c_j_4 + 4 z_ikt_4_BELEM_4 + 4 z_ikt_4_QUITO_4 <= 0
_C323: z_ikt_4_BELEM_4 + z_ikt_4_QUITO_4 <= 1
_C324: s_j_4 + 996 z_ikt_4_BELEM_4 + 996 z_ikt_4_QUITO_4 <= 1000
_C325: - c_j_4 + 5 z_ikt_4_BELEM_5 + 5 z_ikt_4_QUITO_5 <= 0
_C326: z_ikt_4_BELEM_5 + z_ikt_4_QUITO_5 <= 1
_C327: s_j_4 + 995 z_ikt_4_BELEM_5 + 995 z_ikt_4_QUITO_5 <= 1000
_C328: - c_j_4 + 6 z_ikt_4_BELEM_6 + 6 z_ikt_4_QUITO_6 <= 0
_C329: z_ikt_4_BELEM_6 + z_ikt_4_QUITO_6 <= 1
_C33: s_j_1 + 992 z_ikt_1_BELEM_8 + 992 z_ikt_1_QUITO_8 <= 1000
_C330: s_j_4 + 994 z_ikt_4_BELEM_6 + 994 z_ikt_4_QUITO_6 <= 1000
_C331: - c_j_4 + 7 z_ikt_4_BELEM_7 + 7 z_ikt_4_QUITO_7 <= 0
_C332: z_ikt_4_BELEM_7 + z_ikt_4_QUITO_7 <= 1
_C333: s_j_4 + 993 z_ikt_4_BELEM_7 + 993 z_ikt_4_QUITO_7 <= 1000
_C334: - c_j_4 + 8 z_ikt_4_BELEM_8 + 8 z_ikt_4_QUITO_8 <= 0
_C335: z_ikt_4_BELEM_8 + z_ikt_4_QUITO_8 <= 1
_C336: s_j_4 + 992 z_ikt_4_BELEM_8 + 992 z_ikt_4_QUITO_8 <= 1000
_C337: - c_j_4 + 9 z_ikt_4_BELEM_9 + 9 z_ikt_4_QUITO_9 <= 0
_C338: z_ikt_4_BELEM_9 + z_ikt_4_QUITO_9 <= 1
_C339: s_j_4 + 991 z_ikt_4_BELEM_9 + 991 z_ikt_4_QUITO_9 <= 1000
_C34: - c_j_1 + 9 z_ikt_1_BELEM_9 + 9 z_ikt_1_QUITO_9 <= 0
_C340: - c_j_4 + 10 z_ikt_4_BELEM_10 + 10 z_ikt_4_QUITO_10 <= 0
_C341: z_ikt_4_BELEM_10 + z_ikt_4_QUITO_10 <= 1
_C342: s_j_4 + 990 z_ikt_4_BELEM_10 + 990 z_ikt_4_QUITO_10 <= 1000
_C343: - c_j_4 + 11 z_ikt_4_BELEM_11 + 11 z_ikt_4_QUITO_11 <= 0
_C344: z_ikt_4_BELEM_11 + z_ikt_4_QUITO_11 <= 1
_C345: s_j_4 + 989 z_ikt_4_BELEM_11 + 989 z_ikt_4_QUITO_11 <= 1000
_C346: - c_j_4 + 12 z_ikt_4_BELEM_12 + 12 z_ikt_4_QUITO_12 <= 0
_C347: z_ikt_4_BELEM_12 + z_ikt_4_QUITO_12 <= 1
_C348: s_j_4 + 988 z_ikt_4_BELEM_12 + 988 z_ikt_4_QUITO_12 <= 1000
_C349: - c_j_4 + 13 z_ikt_4_BELEM_13 + 13 z_ikt_4_QUITO_13 <= 0
_C35: z_ikt_1_BELEM_9 + z_ikt_1_QUITO_9 <= 1
_C350: z_ikt_4_BELEM_13 + z_ikt_4_QUITO_13 <= 1
_C351: s_j_4 + 987 z_ikt_4_BELEM_13 + 987 z_ikt_4_QUITO_13 <= 1000
_C352: - c_j_4 + 14 z_ikt_4_BELEM_14 + 14 z_ikt_4_QUITO_14 <= 0
_C353: z_ikt_4_BELEM_14 + z_ikt_4_QUITO_14 <= 1
_C354: s_j_4 + 986 z_ikt_4_BELEM_14 + 986 z_ikt_4_QUITO_14 <= 1000
_C355: - c_j_4 + 15 z_ikt_4_BELEM_15 + 15 z_ikt_4_QUITO_15 <= 0
_C356: z_ikt_4_BELEM_15 + z_ikt_4_QUITO_15 <= 1
_C357: s_j_4 + 985 z_ikt_4_BELEM_15 + 985 z_ikt_4_QUITO_15 <= 1000
_C358: - c_j_4 + 16 z_ikt_4_BELEM_16 + 16 z_ikt_4_QUITO_16 <= 0
_C359: z_ikt_4_BELEM_16 + z_ikt_4_QUITO_16 <= 1
_C36: s_j_1 + 991 z_ikt_1_BELEM_9 + 991 z_ikt_1_QUITO_9 <= 1000
_C360: s_j_4 + 984 z_ikt_4_BELEM_16 + 984 z_ikt_4_QUITO_16 <= 1000
_C361: - c_j_4 + 17 z_ikt_4_BELEM_17 + 17 z_ikt_4_QUITO_17 <= 0
_C362: z_ikt_4_BELEM_17 + z_ikt_4_QUITO_17 <= 1
_C363: s_j_4 + 983 z_ikt_4_BELEM_17 + 983 z_ikt_4_QUITO_17 <= 1000
_C364: - c_j_4 + 18 z_ikt_4_BELEM_18 + 18 z_ikt_4_QUITO_18 <= 0
_C365: z_ikt_4_BELEM_18 + z_ikt_4_QUITO_18 <= 1
_C366: s_j_4 + 982 z_ikt_4_BELEM_18 + 982 z_ikt_4_QUITO_18 <= 1000
_C367: - c_j_4 + 19 z_ikt_4_BELEM_19 + 19 z_ikt_4_QUITO_19 <= 0
_C368: z_ikt_4_BELEM_19 + z_ikt_4_QUITO_19 <= 1
_C369: s_j_4 + 981 z_ikt_4_BELEM_19 + 981 z_ikt_4_QUITO_19 <= 1000
_C37: - c_j_1 + 10 z_ikt_1_BELEM_10 + 10 z_ikt_1_QUITO_10 <= 0
_C370: - c_j_4 + 20 z_ikt_4_BELEM_20 + 20 z_ikt_4_QUITO_20 <= 0
_C371: z_ikt_4_BELEM_20 + z_ikt_4_QUITO_20 <= 1
_C372: s_j_4 + 980 z_ikt_4_BELEM_20 + 980 z_ikt_4_QUITO_20 <= 1000
_C373: - c_j_4 + 21 z_ikt_4_BELEM_21 + 21 z_ikt_4_QUITO_21 <= 0
_C374: z_ikt_4_BELEM_21 + z_ikt_4_QUITO_21 <= 1
_C375: s_j_4 + 979 z_ikt_4_BELEM_21 + 979 z_ikt_4_QUITO_21 <= 1000
_C376: - c_j_4 + 22 z_ikt_4_BELEM_22 + 22 z_ikt_4_QUITO_22 <= 0
_C377: z_ikt_4_BELEM_22 + z_ikt_4_QUITO_22 <= 1
_C378: s_j_4 + 978 z_ikt_4_BELEM_22 + 978 z_ikt_4_QUITO_22 <= 1000
_C379: - c_j_4 + 23 z_ikt_4_BELEM_23 + 23 z_ikt_4_QUITO_23 <= 0
_C38: z_ikt_1_BELEM_10 + z_ikt_1_QUITO_10 <= 1
_C380: z_ikt_4_BELEM_23 + z_ikt_4_QUITO_23 <= 1
_C381: s_j_4 + 977 z_ikt_4_BELEM_23 + 977 z_ikt_4_QUITO_23 <= 1000
_C382: - c_j_4 + 24 z_ikt_4_BELEM_24 + 24 z_ikt_4_QUITO_24 <= 0
_C383: z_ikt_4_BELEM_24 + z_ikt_4_QUITO_24 <= 1
_C384: s_j_4 + 976 z_ikt_4_BELEM_24 + 976 z_ikt_4_QUITO_24 <= 1000
_C385: - c_j_4 + 25 z_ikt_4_BELEM_25 + 25 z_ikt_4_QUITO_25 <= 0
_C386: z_ikt_4_BELEM_25 + z_ikt_4_QUITO_25 <= 1
_C387: s_j_4 + 975 z_ikt_4_BELEM_25 + 975 z_ikt_4_QUITO_25 <= 1000
_C388: - c_j_4 + 26 z_ikt_4_BELEM_26 + 26 z_ikt_4_QUITO_26 <= 0
_C389: z_ikt_4_BELEM_26 + z_ikt_4_QUITO_26 <= 1
_C39: s_j_1 + 990 z_ikt_1_BELEM_10 + 990 z_ikt_1_QUITO_10 <= 1000
_C390: s_j_4 + 974 z_ikt_4_BELEM_26 + 974 z_ikt_4_QUITO_26 <= 1000
_C391: - c_j_4 + 27 z_ikt_4_BELEM_27 + 27 z_ikt_4_QUITO_27 <= 0
_C392: z_ikt_4_BELEM_27 + z_ikt_4_QUITO_27 <= 1
_C393: s_j_4 + 973 z_ikt_4_BELEM_27 + 973 z_ikt_4_QUITO_27 <= 1000
_C394: - c_j_4 + 28 z_ikt_4_BELEM_28 + 28 z_ikt_4_QUITO_28 <= 0
_C395: z_ikt_4_BELEM_28 + z_ikt_4_QUITO_28 <= 1
_C396: s_j_4 + 972 z_ikt_4_BELEM_28 + 972 z_ikt_4_QUITO_28 <= 1000
_C397: - c_j_4 + 29 z_ikt_4_BELEM_29 + 29 z_ikt_4_QUITO_29 <= 0
_C398: z_ikt_4_BELEM_29 + z_ikt_4_QUITO_29 <= 1
_C399: s_j_4 + 971 z_ikt_4_BELEM_29 + 971 z_ikt_4_QUITO_29 <= 1000
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
_C400: - c_j_4 + 30 z_ikt_4_BELEM_30 + 30 z_ikt_4_QUITO_30 <= 0
_C401: z_ikt_4_BELEM_30 + z_ikt_4_QUITO_30 <= 1
_C402: s_j_4 + 970 z_ikt_4_BELEM_30 + 970 z_ikt_4_QUITO_30 <= 1000
_C403: - c_j_4 + 31 z_ikt_4_BELEM_31 + 31 z_ikt_4_QUITO_31 <= 0
_C404: z_ikt_4_BELEM_31 + z_ikt_4_QUITO_31 <= 1
_C405: s_j_4 + 969 z_ikt_4_BELEM_31 + 969 z_ikt_4_QUITO_31 <= 1000
_C406: c_j_5 - makespan <= 0
_C407: x_ik_5_BELEM + x_ik_5_QUITO = 1
_C408: c_j_5 - s_j_5 - z_ikt_5_BELEM_0 - z_ikt_5_BELEM_1 - z_ikt_5_BELEM_10
 - z_ikt_5_BELEM_11 - z_ikt_5_BELEM_12 - z_ikt_5_BELEM_13 - z_ikt_5_BELEM_14
 - z_ikt_5_BELEM_15 - z_ikt_5_BELEM_16 - z_ikt_5_BELEM_17 - z_ikt_5_BELEM_18
 - z_ikt_5_BELEM_19 - z_ikt_5_BELEM_2 - z_ikt_5_BELEM_20 - z_ikt_5_BELEM_21
 - z_ikt_5_BELEM_22 - z_ikt_5_BELEM_23 - z_ikt_5_BELEM_24 - z_ikt_5_BELEM_25
 - z_ikt_5_BELEM_26 - z_ikt_5_BELEM_27 - z_ikt_5_BELEM_28 - z_ikt_5_BELEM_29
 - z_ikt_5_BELEM_3 - z_ikt_5_BELEM_30 - z_ikt_5_BELEM_31 - z_ikt_5_BELEM_4
 - z_ikt_5_BELEM_5 - z_ikt_5_BELEM_6 - z_ikt_5_BELEM_7 - z_ikt_5_BELEM_8
 - z_ikt_5_BELEM_9 - z_ikt_5_QUITO_0 - z_ikt_5_QUITO_1 - z_ikt_5_QUITO_10
 - z_ikt_5_QUITO_11 - z_ikt_5_QUITO_12 - z_ikt_5_QUITO_13 - z_ikt_5_QUITO_14
 - z_ikt_5_QUITO_15 - z_ikt_5_QUITO_16 - z_ikt_5_QUITO_17 - z_ikt_5_QUITO_18
 - z_ikt_5_QUITO_19 - z_ikt_5_QUITO_2 - z_ikt_5_QUITO_20 - z_ikt_5_QUITO_21
 - z_ikt_5_QUITO_22 - z_ikt_5_QUITO_23 - z_ikt_5_QUITO_24 - z_ikt_5_QUITO_25
 - z_ikt_5_QUITO_26 - z_ikt_5_QUITO_27 - z_ikt_5_QUITO_28 - z_ikt_5_QUITO_29
 - z_ikt_5_QUITO_3 - z_ikt_5_QUITO_30 - z_ikt_5_QUITO_31 - z_ikt_5_QUITO_4
 - z_ikt_5_QUITO_5 - z_ikt_5_QUITO_6 - z_ikt_5_QUITO_7 - z_ikt_5_QUITO_8
 - z_ikt_5_QUITO_9 = -1
_C409: - 1000 x_ik_5_QUITO + z_ikt_5_QUITO_0 + z_ikt_5_QUITO_1
 + z_ikt_5_QUITO_10 + z_ikt_5_QUITO_11 + z_ikt_5_QUITO_12 + z_ikt_5_QUITO_13
 + z_ikt_5_QUITO_14 + z_ikt_5_QUITO_15 + z_ikt_5_QUITO_16 + z_ikt_5_QUITO_17
 + z_ikt_5_QUITO_18 + z_ikt_5_QUITO_19 + z_ikt_5_QUITO_2 + z_ikt_5_QUITO_20
 + z_ikt_5_QUITO_21 + z_ikt_5_QUITO_22 + z_ikt_5_QUITO_23 + z_ikt_5_QUITO_24
 + z_ikt_5_QUITO_25 + z_ikt_5_QUITO_26 + z_ikt_5_QUITO_27 + z_ikt_5_QUITO_28
 + z_ikt_5_QUITO_29 + z_ikt_5_QUITO_3 + z_ikt_5_QUITO_30 + z_ikt_5_QUITO_31
 + z_ikt_5_QUITO_4 + z_ikt_5_QUITO_5 + z_ikt_5_QUITO_6 + z_ikt_5_QUITO_7
 + z_ikt_5_QUITO_8 + z_ikt_5_QUITO_9 <= 0
_C41: z_ikt_1_BELEM_11 + z_ikt_1_QUITO_11 <= 1
_C410: - 1000 x_ik_5_BELEM + z_ikt_5_BELEM_0 + z_ikt_5_BELEM_1
 + z_ikt_5_BELEM_10 + z_ikt_5_BELEM_11 + z_ikt_5_BELEM_12 + z_ikt_5_BELEM_13
 + z_ikt_5_BELEM_14 + z_ikt_5_BELEM_15 + z_ikt_5_BELEM_16 + z_ikt_5_BELEM_17
 + z_ikt_5_BELEM_18 + z_ikt_5_BELEM_19 + z_ikt_5_BELEM_2 + z_ikt_5_BELEM_20
 + z_ikt_5_BELEM_21 + z_ikt_5_BELEM_22 + z_ikt_5_BELEM_23 + z_ikt_5_BELEM_24
 + z_ikt_5_BELEM_25 + z_ikt_5_BELEM_26 + z_ikt_5_BELEM_27 + z_ikt_5_BELEM_28
 + z_ikt_5_BELEM_29 + z_ikt_5_BELEM_3 + z_ikt_5_BELEM_30 + z_ikt_5_BELEM_31
 + z_ikt_5_BELEM_4 + z_ikt_5_BELEM_5 + z_ikt_5_BELEM_6 + z_ikt_5_BELEM_7
 + z_ikt_5_BELEM_8 + z_ikt_5_BELEM_9 <= 0
_C411: - c_j_5 <= 0
_C412: z_ikt_5_BELEM_0 + z_ikt_5_QUITO_0 <= 1
_C413: s_j_5 + 1000 z_ikt_5_BELEM_0 + 1000 z_ikt_5_QUITO_0 <= 1000
_C414: - c_j_5 + z_ikt_5_BELEM_1 + z_ikt_5_QUITO_1 <= 0
_C415: z_ikt_5_BELEM_1 + z_ikt_5_QUITO_1 <= 1
_C416: s_j_5 + 999 z_ikt_5_BELEM_1 + 999 z_ikt_5_QUITO_1 <= 1000
_C417: - c_j_5 + 2 z_ikt_5_BELEM_2 + 2 z_ikt_5_QUITO_2 <= 0
_C418: z_ikt_5_BELEM_2 + z_ikt_5_QUITO_2 <= 1
_C419: s_j_5 + 998 z_ikt_5_BELEM_2 + 998 z_ikt_5_QUITO_2 <= 1000
_C42: s_j_1 + 989 z_ikt_1_BELEM_11 + 989 z_ikt_1_QUITO_11 <= 1000
_C420: - c_j_5 + 3 z_ikt_5_BELEM_3 + 3 z_ikt_5_QUITO_3 <= 0
_C421: z_ikt_5_BELEM_3 + z_ikt_5_QUITO_3 <= 1
_C422: s_j_5 + 997 z_ikt_5_BELEM_3 + 997 z_ikt_5_QUITO_3 <= 1000
_C423: - c_j_5 + 4 z_ikt_5_BELEM_4 + 4 z_ikt_5_QUITO_4 <= 0
_C424: z_ikt_5_BELEM_4 + z_ikt_5_QUITO_4 <= 1
_C425: s_j_5 + 996 z_ikt_5_BELEM_4 + 996 z_ikt_5_QUITO_4 <= 1000
_C426: - c_j_5 + 5 z_ikt_5_BELEM_5 + 5 z_ikt_5_QUITO_5 <= 0
_C427: z_ikt_5_BELEM_5 + z_ikt_5_QUITO_5 <= 1
_C428: s_j_5 + 995 z_ikt_5_BELEM_5 + 995 z_ikt_5_QUITO_5 <= 1000
_C429: - c_j_5 + 6 z_ikt_5_BELEM_6 + 6 z_ikt_5_QUITO_6 <= 0
_C43: - c_j_1 + 12 z_ikt_1_BELEM_12 + 12 z_ikt_1_QUITO_12 <= 0
_C430: z_ikt_5_BELEM_6 + z_ikt_5_QUITO_6 <= 1
_C431: s_j_5 + 994 z_ikt_5_BELEM_6 + 994 z_ikt_5_QUITO_6 <= 1000
_C432: - c_j_5 + 7 z_ikt_5_BELEM_7 + 7 z_ikt_5_QUITO_7 <= 0
_C433: z_ikt_5_BELEM_7 + z_ikt_5_QUITO_7 <= 1
_C434: s_j_5 + 993 z_ikt_5_BELEM_7 + 993 z_ikt_5_QUITO_7 <= 1000
_C435: - c_j_5 + 8 z_ikt_5_BELEM_8 + 8 z_ikt_5_QUITO_8 <= 0
_C436: z_ikt_5_BELEM_8 + z_ikt_5_QUITO_8 <= 1
_C437: s_j_5 + 992 z_ikt_5_BELEM_8 + 992 z_ikt_5_QUITO_8 <= 1000
_C438: - c_j_5 + 9 z_ikt_5_BELEM_9 + 9 z_ikt_5_QUITO_9 <= 0
_C439: z_ikt_5_BELEM_9 + z_ikt_5_QUITO_9 <= 1
_C44: z_ikt_1_BELEM_12 + z_ikt_1_QUITO_12 <= 1
_C440: s_j_5 + 991 z_ikt_5_BELEM_9 + 991 z_ikt_5_QUITO_9 <= 1000
_C441: - c_j_5 + 10 z_ikt_5_BELEM_10 + 10 z_ikt_5_QUITO_10 <= 0
_C442: z_ikt_5_BELEM_10 + z_ikt_5_QUITO_10 <= 1
_C443: s_j_5 + 990 z_ikt_5_BELEM_10 + 990 z_ikt_5_QUITO_10 <= 1000
_C444: - c_j_5 + 11 z_ikt_5_BELEM_11 + 11 z_ikt_5_QUITO_11 <= 0
_C445: z_ikt_5_BELEM_11 + z_ikt_5_QUITO_11 <= 1
_C446: s_j_5 + 989 z_ikt_5_BELEM_11 + 989 z_ikt_5_QUITO_11 <= 1000
_C447: - c_j_5 + 12 z_ikt_5_BELEM_12 + 12 z_ikt_5_QUITO_12 <= 0
_C448: z_ikt_5_BELEM_12 + z_ikt_5_QUITO_12 <= 1
_C449: s_j_5 + 988 z_ikt_5_BELEM_12 + 988 z_ikt_5_QUITO_12 <= 1000
_C45: s_j_1 + 988 z_ikt_1_BELEM_12 + 988 z_ikt_1_QUITO_12 <= 1000
_C450: - c_j_5 + 13 z_ikt_5_BELEM_13 + 13 z_ikt_5_QUITO_13 <= 0
_C451: z_ikt_5_BELEM_13 + z_ikt_5_QUITO_13 <= 1
_C452: s_j_5 + 987 z_ikt_5_BELEM_13 + 987 z_ikt_5_QUITO_13 <= 1000
_C453: - c_j_5 + 14 z_ikt_5_BELEM_14 + 14 z_ikt_5_QUITO_14 <= 0
_C454: z_ikt_5_BELEM_14 + z_ikt_5_QUITO_14 <= 1
_C455: s_j_5 + 986 z_ikt_5_BELEM_14 + 986 z_ikt_5_QUITO_14 <= 1000
_C456: - c_j_5 + 15 z_ikt_5_BELEM_15 + 15 z_ikt_5_QUITO_15 <= 0
_C457: z_ikt_5_BELEM_15 + z_ikt_5_QUITO_15 <= 1
_C458: s_j_5 + 985 z_ikt_5_BELEM_15 + 985 z_ikt_5_QUITO_15 <= 1000
_C459: - c_j_5 + 16 z_ikt_5_BELEM_16 + 16 z_ikt_5_QUITO_16 <= 0
_C46: - c_j_1 + 13 z_ikt_1_BELEM_13 + 13 z_ikt_1_QUITO_13 <= 0
_C460: z_ikt_5_BELEM_16 + z_ikt_5_QUITO_16 <= 1
_C461: s_j_5 + 984 z_ikt_5_BELEM_16 + 984 z_ikt_5_QUITO_16 <= 1000
_C462: - c_j_5 + 17 z_ikt_5_BELEM_17 + 17 z_ikt_5_QUITO_17 <= 0
_C463: z_ikt_5_BELEM_17 + z_ikt_5_QUITO_17 <= 1
_C464: s_j_5 + 983 z_ikt_5_BELEM_17 + 983 z_ikt_5_QUITO_17 <= 1000
_C465: - c_j_5 + 18 z_ikt_5_BELEM_18 + 18 z_ikt_5_QUITO_18 <= 0
_C466: z_ikt_5_BELEM_18 + z_ikt_5_QUITO_18 <= 1
_C467: s_j_5 + 982 z_ikt_5_BELEM_18 + 982 z_ikt_5_QUITO_18 <= 1000
_C468: - c_j_5 + 19 z_ikt_5_BELEM_19 + 19 z_ikt_5_QUITO_19 <= 0
_C469: z_ikt_5_BELEM_19 + z_ikt_5_QUITO_19 <= 1
_C47: z_ikt_1_BELEM_13 + z_ikt_1_QUITO_13 <= 1
_C470: s_j_5 + 981 z_ikt_5_BELEM_19 + 981 z_ikt_5_QUITO_19 <= 1000
_C471: - c_j_5 + 20 z_ikt_5_BELEM_20 + 20 z_ikt_5_QUITO_20 <= 0
_C472: z_ikt_5_BELEM_20 + z_ikt_5_QUITO_20 <= 1
_C473: s_j_5 + 980 z_ikt_5_BELEM_20 + 980 z_ikt_5_QUITO_20 <= 1000
_C474: - c_j_5 + 21 z_ikt_5_BELEM_21 + 21 z_ikt_5_QUITO_21 <= 0
_C475: z_ikt_5_BELEM_21 + z_ikt_5_QUITO_21 <= 1
_C476: s_j_5 + 979 z_ikt_5_BELEM_21 + 979 z_ikt_5_QUITO_21 <= 1000
_C477: - c_j_5 + 22 z_ikt_5_BELEM_22 + 22 z_ikt_5_QUITO_22 <= 0
_C478: z_ikt_5_BELEM_22 + z_ikt_5_QUITO_22 <= 1
_C479: s_j_5 + 978 z_ikt_5_BELEM_22 + 978 z_ikt_5_QUITO_22 <= 1000
_C48: s_j_1 + 987 z_ikt_1_BELEM_13 + 987 z_ikt_1_QUITO_13 <= 1000
_C480: - c_j_5 + 23 z_ikt_5_BELEM_23 + 23 z_ikt_5_QUITO_23 <= 0
_C481: z_ikt_5_BELEM_23 + z_ikt_5_QUITO_23 <= 1
_C482: s_j_5 + 977 z_ikt_5_BELEM_23 + 977 z_ikt_5_QUITO_23 <= 1000
_C483: - c_j_5 + 24 z_ikt_5_BELEM_24 + 24 z_ikt_5_QUITO_24 <= 0
_C484: z_ikt_5_BELEM_24 + z_ikt_5_QUITO_24 <= 1
_C485: s_j_5 + 976 z_ikt_5_BELEM_24 + 976 z_ikt_5_QUITO_24 <= 1000
_C486: - c_j_5 + 25 z_ikt_5_BELEM_25 + 25 z_ikt_5_QUITO_25 <= 0
_C487: z_ikt_5_BELEM_25 + z_ikt_5_QUITO_25 <= 1
_C488: s_j_5 + 975 z_ikt_5_BELEM_25 + 975 z_ikt_5_QUITO_25 <= 1000
_C489: - c_j_5 + 26 z_ikt_5_BELEM_26 + 26 z_ikt_5_QUITO_26 <= 0
_C49: - c_j_1 + 14 z_ikt_1_BELEM_14 + 14 z_ikt_1_QUITO_14 <= 0
_C490: z_ikt_5_BELEM_26 + z_ikt_5_QUITO_26 <= 1
_C491: s_j_5 + 974 z_ikt_5_BELEM_26 + 974 z_ikt_5_QUITO_26 <= 1000
_C492: - c_j_5 + 27 z_ikt_5_BELEM_27 + 27 z_ikt_5_QUITO_27 <= 0
_C493: z_ikt_5_BELEM_27 + z_ikt_5_QUITO_27 <= 1
_C494: s_j_5 + 973 z_ikt_5_BELEM_27 + 973 z_ikt_5_QUITO_27 <= 1000
_C495: - c_j_5 + 28 z_ikt_5_BELEM_28 + 28 z_ikt_5_QUITO_28 <= 0
_C496: z_ikt_5_BELEM_28 + z_ikt_5_QUITO_28 <= 1
_C497: s_j_5 + 972 z_ikt_5_BELEM_28 + 972 z_ikt_5_QUITO_28 <= 1000
_C498: - c_j_5 + 29 z_ikt_5_BELEM_29 + 29 z_ikt_5_QUITO_29 <= 0
_C499: z_ikt_5_BELEM_29 + z_ikt_5_QUITO_29 <= 1
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
_C500: s_j_5 + 971 z_ikt_5_BELEM_29 + 971 z_ikt_5_QUITO_29 <= 1000
_C501: - c_j_5 + 30 z_ikt_5_BELEM_30 + 30 z_ikt_5_QUITO_30 <= 0
_C502: z_ikt_5_BELEM_30 + z_ikt_5_QUITO_30 <= 1
_C503: s_j_5 + 970 z_ikt_5_BELEM_30 + 970 z_ikt_5_QUITO_30 <= 1000
_C504: - c_j_5 + 31 z_ikt_5_BELEM_31 + 31 z_ikt_5_QUITO_31 <= 0
_C505: z_ikt_5_BELEM_31 + z_ikt_5_QUITO_31 <= 1
_C506: s_j_5 + 969 z_ikt_5_BELEM_31 + 969 z_ikt_5_QUITO_31 <= 1000
_C507: 2 z_ikt_1_QUITO_0 + 3 z_ikt_2_QUITO_0 + 5 z_ikt_3_QUITO_0
 + 2 z_ikt_4_QUITO_0 + 3 z_ikt_5_QUITO_0 <= 5
_C508: 2 z_ikt_1_BELEM_0 + 3 z_ikt_2_BELEM_0 + 5 z_ikt_3_BELEM_0
 + 2 z_ikt_4_BELEM_0 + 3 z_ikt_5_BELEM_0 <= 5
_C509: 2 z_ikt_1_QUITO_1 + 3 z_ikt_2_QUITO_1 + 5 z_ikt_3_QUITO_1
 + 2 z_ikt_4_QUITO_1 + 3 z_ikt_5_QUITO_1 <= 5
_C51: s_j_1 + 986 z_ikt_1_BELEM_14 + 986 z_ikt_1_QUITO_14 <= 1000
_C510: 2 z_ikt_1_BELEM_1 + 3 z_ikt_2_BELEM_1 + 5 z_ikt_3_BELEM_1
 + 2 z_ikt_4_BELEM_1 + 3 z_ikt_5_BELEM_1 <= 5
_C511: 2 z_ikt_1_QUITO_2 + 3 z_ikt_2_QUITO_2 + 5 z_ikt_3_QUITO_2
 + 2 z_ikt_4_QUITO_2 + 3 z_ikt_5_QUITO_2 <= 5
_C512: 2 z_ikt_1_BELEM_2 + 3 z_ikt_2_BELEM_2 + 5 z_ikt_3_BELEM_2
 + 2 z_ikt_4_BELEM_2 + 3 z_ikt_5_BELEM_2 <= 5
_C513: 2 z_ikt_1_QUITO_3 + 3 z_ikt_2_QUITO_3 + 5 z_ikt_3_QUITO_3
 + 2 z_ikt_4_QUITO_3 + 3 z_ikt_5_QUITO_3 <= 5
_C514: 2 z_ikt_1_BELEM_3 + 3 z_ikt_2_BELEM_3 + 5 z_ikt_3_BELEM_3
 + 2 z_ikt_4_BELEM_3 + 3 z_ikt_5_BELEM_3 <= 5
_C515: 2 z_ikt_1_QUITO_4 + 3 z_ikt_2_QUITO_4 + 5 z_ikt_3_QUITO_4
 + 2 z_ikt_4_QUITO_4 + 3 z_ikt_5_QUITO_4 <= 5
_C516: 2 z_ikt_1_BELEM_4 + 3 z_ikt_2_BELEM_4 + 5 z_ikt_3_BELEM_4
 + 2 z_ikt_4_BELEM_4 + 3 z_ikt_5_BELEM_4 <= 5
_C517: 2 z_ikt_1_QUITO_5 + 3 z_ikt_2_QUITO_5 + 5 z_ikt_3_QUITO_5
 + 2 z_ikt_4_QUITO_5 + 3 z_ikt_5_QUITO_5 <= 5
_C518: 2 z_ikt_1_BELEM_5 + 3 z_ikt_2_BELEM_5 + 5 z_ikt_3_BELEM_5
 + 2 z_ikt_4_BELEM_5 + 3 z_ikt_5_BELEM_5 <= 5
_C519: 2 z_ikt_1_QUITO_6 + 3 z_ikt_2_QUITO_6 + 5 z_ikt_3_QUITO_6
 + 2 z_ikt_4_QUITO_6 + 3 z_ikt_5_QUITO_6 <= 5
_C52: - c_j_1 + 15 z_ikt_1_BELEM_15 + 15 z_ikt_1_QUITO_15 <= 0
_C520: 2 z_ikt_1_BELEM_6 + 3 z_ikt_2_BELEM_6 + 5 z_ikt_3_BELEM_6
 + 2 z_ikt_4_BELEM_6 + 3 z_ikt_5_BELEM_6 <= 5
_C521: 2 z_ikt_1_QUITO_7 + 3 z_ikt_2_QUITO_7 + 5 z_ikt_3_QUITO_7
 + 2 z_ikt_4_QUITO_7 + 3 z_ikt_5_QUITO_7 <= 5
_C522: 2 z_ikt_1_BELEM_7 + 3 z_ikt_2_BELEM_7 + 5 z_ikt_3_BELEM_7
 + 2 z_ikt_4_BELEM_7 + 3 z_ikt_5_BELEM_7 <= 5
_C523: 2 z_ikt_1_QUITO_8 + 3 z_ikt_2_QUITO_8 + 5 z_ikt_3_QUITO_8
 + 2 z_ikt_4_QUITO_8 + 3 z_ikt_5_QUITO_8 <= 5
_C524: 2 z_ikt_1_BELEM_8 + 3 z_ikt_2_BELEM_8 + 5 z_ikt_3_BELEM_8
 + 2 z_ikt_4_BELEM_8 + 3 z_ikt_5_BELEM_8 <= 5
_C525: 2 z_ikt_1_QUITO_9 + 3 z_ikt_2_QUITO_9 + 5 z_ikt_3_QUITO_9
 + 2 z_ikt_4_QUITO_9 + 3 z_ikt_5_QUITO_9 <= 5
_C526: 2 z_ikt_1_BELEM_9 + 3 z_ikt_2_BELEM_9 + 5 z_ikt_3_BELEM_9
 + 2 z_ikt_4_BELEM_9 + 3 z_ikt_5_BELEM_9 <= 5
_C527: 2 z_ikt_1_QUITO_10 + 3 z_ikt_2_QUITO_10 + 5 z_ikt_3_QUITO_10
 + 2 z_ikt_4_QUITO_10 + 3 z_ikt_5_QUITO_10 <= 5
_C528: 2 z_ikt_1_BELEM_10 + 3 z_ikt_2_BELEM_10 + 5 z_ikt_3_BELEM_10
 + 2 z_ikt_4_BELEM_10 + 3 z_ikt_5_BELEM_10 <= 5
_C529: 2 z_ikt_1_QUITO_11 + 3 z_ikt_2_QUITO_11 + 5 z_ikt_3_QUITO_11
 + 2 z_ikt_4_QUITO_11 + 3 z_ikt_5_QUITO_11 <= 5
_C53: z_ikt_1_BELEM_15 + z_ikt_1_QUITO_15 <= 1
_C530: 2 z_ikt_1_BELEM_11 + 3 z_ikt_2_BELEM_11 + 5 z_ikt_3_BELEM_11
 + 2 z_ikt_4_BELEM_11 + 3 z_ikt_5_BELEM_11 <= 5
_C531: 2 z_ikt_1_QUITO_12 + 3 z_ikt_2_QUITO_12 + 5 z_ikt_3_QUITO_12
 + 2 z_ikt_4_QUITO_12 + 3 z_ikt_5_QUITO_12 <= 5
_C532: 2 z_ikt_1_BELEM_12 + 3 z_ikt_2_BELEM_12 + 5 z_ikt_3_BELEM_12
 + 2 z_ikt_4_BELEM_12 + 3 z_ikt_5_BELEM_12 <= 5
_C533: 2 z_ikt_1_QUITO_13 + 3 z_ikt_2_QUITO_13 + 5 z_ikt_3_QUITO_13
 + 2 z_ikt_4_QUITO_13 + 3 z_ikt_5_QUITO_13 <= 5
_C534: 2 z_ikt_1_BELEM_13 + 3 z_ikt_2_BELEM_13 + 5 z_ikt_3_BELEM_13
 + 2 z_ikt_4_BELEM_13 + 3 z_ikt_5_BELEM_13 <= 5
_C535: 2 z_ikt_1_QUITO_14 + 3 z_ikt_2_QUITO_14 + 5 z_ikt_3_QUITO_14
 + 2 z_ikt_4_QUITO_14 + 3 z_ikt_5_QUITO_14 <= 5
_C536: 2 z_ikt_1_BELEM_14 + 3 z_ikt_2_BELEM_14 + 5 z_ikt_3_BELEM_14
 + 2 z_ikt_4_BELEM_14 + 3 z_ikt_5_BELEM_14 <= 5
_C537: 2 z_ikt_1_QUITO_15 + 3 z_ikt_2_QUITO_15 + 5 z_ikt_3_QUITO_15
 + 2 z_ikt_4_QUITO_15 + 3 z_ikt_5_QUITO_15 <= 5
_C538: 2 z_ikt_1_BELEM_15 + 3 z_ikt_2_BELEM_15 + 5 z_ikt_3_BELEM_15
 + 2 z_ikt_4_BELEM_15 + 3 z_ikt_5_BELEM_15 <= 5
_C539: 2 z_ikt_1_QUITO_16 + 3 z_ikt_2_QUITO_16 + 5 z_ikt_3_QUITO_16
 + 2 z_ikt_4_QUITO_16 + 3 z_ikt_5_QUITO_16 <= 5
_C54: s_j_1 + 985 z_ikt_1_BELEM_15 + 985 z_ikt_1_QUITO_15 <= 1000
_C540: 2 z_ikt_1_BELEM_16 + 3 z_ikt_2_BELEM_16 + 5 z_ikt_3_BELEM_16
 + 2 z_ikt_4_BELEM_16 + 3 z_ikt_5_BELEM_16 <= 5
_C541: 2 z_ikt_1_QUITO_17 + 3 z_ikt_2_QUITO_17 + 5 z_ikt_3_QUITO_17
 + 2 z_ikt_4_QUITO_17 + 3 z_ikt_5_QUITO_17 <= 5
_C542: 2 z_ikt_1_BELEM_17 + 3 z_ikt_2_BELEM_17 + 5 z_ikt_3_BELEM_17
 + 2 z_ikt_4_BELEM_17 + 3 z_ikt_5_BELEM_17 <= 5
_C543: 2 z_ikt_1_QUITO_18 + 3 z_ikt_2_QUITO_18 + 5 z_ikt_3_QUITO_18
 + 2 z_ikt_4_QUITO_18 + 3 z_ikt_5_QUITO_18 <= 5
_C544: 2 z_ikt_1_BELEM_18 + 3 z_ikt_2_BELEM_18 + 5 z_ikt_3_BELEM_18
 + 2 z_ikt_4_BELEM_18 + 3 z_ikt_5_BELEM_18 <= 5
_C545: 2 z_ikt_1_QUITO_19 + 3 z_ikt_2_QUITO_19 + 5 z_ikt_3_QUITO_19
 + 2 z_ikt_4_QUITO_19 + 3 z_ikt_5_QUITO_19 <= 5
_C546: 2 z_ikt_1_BELEM_19 + 3 z_ikt_2_BELEM_19 + 5 z_ikt_3_BELEM_19
 + 2 z_ikt_4_BELEM_19 + 3 z_ikt_5_BELEM_19 <= 5
_C547: 2 z_ikt_1_QUITO_20 + 3 z_ikt_2_QUITO_20 + 5 z_ikt_3_QUITO_20
 + 2 z_ikt_4_QUITO_20 + 3 z_ikt_5_QUITO_20 <= 5
_C548: 2 z_ikt_1_BELEM_20 + 3 z_ikt_2_BELEM_20 + 5 z_ikt_3_BELEM_20
 + 2 z_ikt_4_BELEM_20 + 3 z_ikt_5_BELEM_20 <= 5
_C549: 2 z_ikt_1_QUITO_21 + 3 z_ikt_2_QUITO_21 + 5 z_ikt_3_QUITO_21
 + 2 z_ikt_4_QUITO_21 + 3 z_ikt_5_QUITO_21 <= 5
_C55: - c_j_1 + 16 z_ikt_1_BELEM_16 + 16 z_ikt_1_QUITO_16 <= 0
_C550: 2 z_ikt_1_BELEM_21 + 3 z_ikt_2_BELEM_21 + 5 z_ikt_3_BELEM_21
 + 2 z_ikt_4_BELEM_21 + 3 z_ikt_5_BELEM_21 <= 5
_C551: 2 z_ikt_1_QUITO_22 + 3 z_ikt_2_QUITO_22 + 5 z_ikt_3_QUITO_22
 + 2 z_ikt_4_QUITO_22 + 3 z_ikt_5_QUITO_22 <= 5
_C552: 2 z_ikt_1_BELEM_22 + 3 z_ikt_2_BELEM_22 + 5 z_ikt_3_BELEM_22
 + 2 z_ikt_4_BELEM_22 + 3 z_ikt_5_BELEM_22 <= 5
_C553: 2 z_ikt_1_QUITO_23 + 3 z_ikt_2_QUITO_23 + 5 z_ikt_3_QUITO_23
 + 2 z_ikt_4_QUITO_23 + 3 z_ikt_5_QUITO_23 <= 5
_C554: 2 z_ikt_1_BELEM_23 + 3 z_ikt_2_BELEM_23 + 5 z_ikt_3_BELEM_23
 + 2 z_ikt_4_BELEM_23 + 3 z_ikt_5_BELEM_23 <= 5
_C555: 2 z_ikt_1_QUITO_24 + 3 z_ikt_2_QUITO_24 + 5 z_ikt_3_QUITO_24
 + 2 z_ikt_4_QUITO_24 + 3 z_ikt_5_QUITO_24 <= 5
_C556: 2 z_ikt_1_BELEM_24 + 3 z_ikt_2_BELEM_24 + 5 z_ikt_3_BELEM_24
 + 2 z_ikt_4_BELEM_24 + 3 z_ikt_5_BELEM_24 <= 5
_C557: 2 z_ikt_1_QUITO_25 + 3 z_ikt_2_QUITO_25 + 5 z_ikt_3_QUITO_25
 + 2 z_ikt_4_QUITO_25 + 3 z_ikt_5_QUITO_25 <= 5
_C558: 2 z_ikt_1_BELEM_25 + 3 z_ikt_2_BELEM_25 + 5 z_ikt_3_BELEM_25
 + 2 z_ikt_4_BELEM_25 + 3 z_ikt_5_BELEM_25 <= 5
_C559: 2 z_ikt_1_QUITO_26 + 3 z_ikt_2_QUITO_26 + 5 z_ikt_3_QUITO_26
 + 2 z_ikt_4_QUITO_26 + 3 z_ikt_5_QUITO_26 <= 5
_C56: z_ikt_1_BELEM_16 + z_ikt_1_QUITO_16 <= 1
_C560: 2 z_ikt_1_BELEM_26 + 3 z_ikt_2_BELEM_26 + 5 z_ikt_3_BELEM_26
 + 2 z_ikt_4_BELEM_26 + 3 z_ikt_5_BELEM_26 <= 5
_C561: 2 z_ikt_1_QUITO_27 + 3 z_ikt_2_QUITO_27 + 5 z_ikt_3_QUITO_27
 + 2 z_ikt_4_QUITO_27 + 3 z_ikt_5_QUITO_27 <= 5
_C562: 2 z_ikt_1_BELEM_27 + 3 z_ikt_2_BELEM_27 + 5 z_ikt_3_BELEM_27
 + 2 z_ikt_4_BELEM_27 + 3 z_ikt_5_BELEM_27 <= 5
_C563: 2 z_ikt_1_QUITO_28 + 3 z_ikt_2_QUITO_28 + 5 z_ikt_3_QUITO_28
 + 2 z_ikt_4_QUITO_28 + 3 z_ikt_5_QUITO_28 <= 5
_C564: 2 z_ikt_1_BELEM_28 + 3 z_ikt_2_BELEM_28 + 5 z_ikt_3_BELEM_28
 + 2 z_ikt_4_BELEM_28 + 3 z_ikt_5_BELEM_28 <= 5
_C565: 2 z_ikt_1_QUITO_29 + 3 z_ikt_2_QUITO_29 + 5 z_ikt_3_QUITO_29
 + 2 z_ikt_4_QUITO_29 + 3 z_ikt_5_QUITO_29 <= 5
_C566: 2 z_ikt_1_BELEM_29 + 3 z_ikt_2_BELEM_29 + 5 z_ikt_3_BELEM_29
 + 2 z_ikt_4_BELEM_29 + 3 z_ikt_5_BELEM_29 <= 5
_C567: 2 z_ikt_1_QUITO_30 + 3 z_ikt_2_QUITO_30 + 5 z_ikt_3_QUITO_30
 + 2 z_ikt_4_QUITO_30 + 3 z_ikt_5_QUITO_30 <= 5
_C568: 2 z_ikt_1_BELEM_30 + 3 z_ikt_2_BELEM_30 + 5 z_ikt_3_BELEM_30
 + 2 z_ikt_4_BELEM_30 + 3 z_ikt_5_BELEM_30 <= 5
_C569: 2 z_ikt_1_QUITO_31 + 3 z_ikt_2_QUITO_31 + 5 z_ikt_3_QUITO_31
 + 2 z_ikt_4_QUITO_31 + 3 z_ikt_5_QUITO_31 <= 5
_C57: s_j_1 + 984 z_ikt_1_BELEM_16 + 984 z_ikt_1_QUITO_16 <= 1000
_C570: 2 z_ikt_1_BELEM_31 + 3 z_ikt_2_BELEM_31 + 5 z_ikt_3_BELEM_31
 + 2 z_ikt_4_BELEM_31 + 3 z_ikt_5_BELEM_31 <= 5
_C571: c_j_1 - s_j_1 - 9 x_ik_1_BELEM - 17 x_ik_1_QUITO >= 0
_C572: c_j_2 - s_j_2 - 10 x_ik_2_BELEM - 19 x_ik_2_QUITO >= 0
_C573: c_j_3 - s_j_3 - 9 x_ik_3_BELEM - 22 x_ik_3_QUITO >= 0
_C574: c_j_4 - s_j_4 - 7 x_ik_4_BELEM - 16 x_ik_4_QUITO >= 0
_C575: c_j_5 - s_j_5 - 10 x_ik_5_BELEM - 19 x_ik_5_QUITO >= 0
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
x_ik_1_BELEM
x_ik_1_QUITO
x_ik_2_BELEM
x_ik_2_QUITO
x_ik_3_BELEM
x_ik_3_QUITO
x_ik_4_BELEM
x_ik_4_QUITO
x_ik_5_BELEM
x_ik_5_QUITO
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
z_ikt_3_BELEM_0
z_ikt_3_BELEM_1
z_ikt_3_BELEM_10
z_ikt_3_BELEM_11
z_ikt_3_BELEM_12
z_ikt_3_BELEM_13
z_ikt_3_BELEM_14
z_ikt_3_BELEM_15
z_ikt_3_BELEM_16
z_ikt_3_BELEM_17
z_ikt_3_BELEM_18
z_ikt_3_BELEM_19
z_ikt_3_BELEM_2
z_ikt_3_BELEM_20
z_ikt_3_BELEM_21
z_ikt_3_BELEM_22
z_ikt_3_BELEM_23
z_ikt_3_BELEM_24
z_ikt_3_BELEM_25
z_ikt_3_BELEM_26
z_ikt_3_BELEM_27
z_ikt_3_BELEM_28
z_ikt_3_BELEM_29
z_ikt_3_BELEM_3
z_ikt_3_BELEM_30
z_ikt_3_BELEM_31
z_ikt_3_BELEM_4
z_ikt_3_BELEM_5
z_ikt_3_BELEM_6
z_ikt_3_BELEM_7
z_ikt_3_BELEM_8
z_ikt_3_BELEM_9
z_ikt_3_QUITO_0
z_ikt_3_QUITO_1
z_ikt_3_QUITO_10
z_ikt_3_QUITO_11
z_ikt_3_QUITO_12
z_ikt_3_QUITO_13
z_ikt_3_QUITO_14
z_ikt_3_QUITO_15
z_ikt_3_QUITO_16
z_ikt_3_QUITO_17
z_ikt_3_QUITO_18
z_ikt_3_QUITO_19
z_ikt_3_QUITO_2
z_ikt_3_QUITO_20
z_ikt_3_QUITO_21
z_ikt_3_QUITO_22
z_ikt_3_QUITO_23
z_ikt_3_QUITO_24
z_ikt_3_QUITO_25
z_ikt_3_QUITO_26
z_ikt_3_QUITO_27
z_ikt_3_QUITO_28
z_ikt_3_QUITO_29
z_ikt_3_QUITO_3
z_ikt_3_QUITO_30
z_ikt_3_QUITO_31
z_ikt_3_QUITO_4
z_ikt_3_QUITO_5
z_ikt_3_QUITO_6
z_ikt_3_QUITO_7
z_ikt_3_QUITO_8
z_ikt_3_QUITO_9
z_ikt_4_BELEM_0
z_ikt_4_BELEM_1
z_ikt_4_BELEM_10
z_ikt_4_BELEM_11
z_ikt_4_BELEM_12
z_ikt_4_BELEM_13
z_ikt_4_BELEM_14
z_ikt_4_BELEM_15
z_ikt_4_BELEM_16
z_ikt_4_BELEM_17
z_ikt_4_BELEM_18
z_ikt_4_BELEM_19
z_ikt_4_BELEM_2
z_ikt_4_BELEM_20
z_ikt_4_BELEM_21
z_ikt_4_BELEM_22
z_ikt_4_BELEM_23
z_ikt_4_BELEM_24
z_ikt_4_BELEM_25
z_ikt_4_BELEM_26
z_ikt_4_BELEM_27
z_ikt_4_BELEM_28
z_ikt_4_BELEM_29
z_ikt_4_BELEM_3
z_ikt_4_BELEM_30
z_ikt_4_BELEM_31
z_ikt_4_BELEM_4
z_ikt_4_BELEM_5
z_ikt_4_BELEM_6
z_ikt_4_BELEM_7
z_ikt_4_BELEM_8
z_ikt_4_BELEM_9
z_ikt_4_QUITO_0
z_ikt_4_QUITO_1
z_ikt_4_QUITO_10
z_ikt_4_QUITO_11
z_ikt_4_QUITO_12
z_ikt_4_QUITO_13
z_ikt_4_QUITO_14
z_ikt_4_QUITO_15
z_ikt_4_QUITO_16
z_ikt_4_QUITO_17
z_ikt_4_QUITO_18
z_ikt_4_QUITO_19
z_ikt_4_QUITO_2
z_ikt_4_QUITO_20
z_ikt_4_QUITO_21
z_ikt_4_QUITO_22
z_ikt_4_QUITO_23
z_ikt_4_QUITO_24
z_ikt_4_QUITO_25
z_ikt_4_QUITO_26
z_ikt_4_QUITO_27
z_ikt_4_QUITO_28
z_ikt_4_QUITO_29
z_ikt_4_QUITO_3
z_ikt_4_QUITO_30
z_ikt_4_QUITO_31
z_ikt_4_QUITO_4
z_ikt_4_QUITO_5
z_ikt_4_QUITO_6
z_ikt_4_QUITO_7
z_ikt_4_QUITO_8
z_ikt_4_QUITO_9
z_ikt_5_BELEM_0
z_ikt_5_BELEM_1
z_ikt_5_BELEM_10
z_ikt_5_BELEM_11
z_ikt_5_BELEM_12
z_ikt_5_BELEM_13
z_ikt_5_BELEM_14
z_ikt_5_BELEM_15
z_ikt_5_BELEM_16
z_ikt_5_BELEM_17
z_ikt_5_BELEM_18
z_ikt_5_BELEM_19
z_ikt_5_BELEM_2
z_ikt_5_BELEM_20
z_ikt_5_BELEM_21
z_ikt_5_BELEM_22
z_ikt_5_BELEM_23
z_ikt_5_BELEM_24
z_ikt_5_BELEM_25
z_ikt_5_BELEM_26
z_ikt_5_BELEM_27
z_ikt_5_BELEM_28
z_ikt_5_BELEM_29
z_ikt_5_BELEM_3
z_ikt_5_BELEM_30
z_ikt_5_BELEM_31
z_ikt_5_BELEM_4
z_ikt_5_BELEM_5
z_ikt_5_BELEM_6
z_ikt_5_BELEM_7
z_ikt_5_BELEM_8
z_ikt_5_BELEM_9
z_ikt_5_QUITO_0
z_ikt_5_QUITO_1
z_ikt_5_QUITO_10
z_ikt_5_QUITO_11
z_ikt_5_QUITO_12
z_ikt_5_QUITO_13
z_ikt_5_QUITO_14
z_ikt_5_QUITO_15
z_ikt_5_QUITO_16
z_ikt_5_QUITO_17
z_ikt_5_QUITO_18
z_ikt_5_QUITO_19
z_ikt_5_QUITO_2
z_ikt_5_QUITO_20
z_ikt_5_QUITO_21
z_ikt_5_QUITO_22
z_ikt_5_QUITO_23
z_ikt_5_QUITO_24
z_ikt_5_QUITO_25
z_ikt_5_QUITO_26
z_ikt_5_QUITO_27
z_ikt_5_QUITO_28
z_ikt_5_QUITO_29
z_ikt_5_QUITO_3
z_ikt_5_QUITO_30
z_ikt_5_QUITO_31
z_ikt_5_QUITO_4
z_ikt_5_QUITO_5
z_ikt_5_QUITO_6
z_ikt_5_QUITO_7
z_ikt_5_QUITO_8
z_ikt_5_QUITO_9
End
