declare void @print(i8*) #0
declare void @println(i8*) #0
declare void @printInt(i32) #0
declare void @printlnInt(i32) #0
declare i32 @getInt() #0
declare i8* @getString() #0
declare i8* @toString(i32) #0
declare i8 @__string_slt(i8*, i8*) #0
declare i8 @__string_sle(i8*, i8*) #0
declare i8 @__string_sgt(i8*, i8*) #0
declare i8 @__string_sge(i8*, i8*) #0
declare i8 @__string_eq(i8*, i8*) #0
declare i8 @__string_ne(i8*, i8*) #0
declare i8* @__merge_string(i8*, i8*) #0
declare i8* @__malloc(i32) #0
declare i32 @__string_length(i8*) #0
declare i8* @__string_substring(i8*, i32, i32) #0
declare i32 @__string_parseInt(i8*) #0
declare i32 @__string_ord(i8*, i32) #0

@.str.0 = private unnamed_addr constant [3 x i8] c"-1\00"
@.str.1 = private unnamed_addr constant [2 x i8] c" \00"
@.str.2 = private unnamed_addr constant [1 x i8] c"\00"


@INF = global i32 0, align 4
@n = global i32 0, align 4
@m = global i32 0, align 4
@a = global i32** null, align 4

define void @init() #0 {
init.entry:
	%identifier_register_0 = load i32, i32* @n, align 4
	%ret_1 = call i32 @getInt()
	store i32 %ret_1, i32* @n, align 4
	%identifier_register_2 = load i32, i32* @m, align 4
	%ret_3 = call i32 @getInt()
	store i32 %ret_3, i32* @m, align 4
	%identifier_register_4 = load i32**, i32*** @a, align 4
	%identifier_register_5 = load i32, i32* @n, align 4
	%identifier_register_6 = load i32, i32* @n, align 4
	%arr_size_reg_7 = mul i32 %identifier_register_5, 4
	%malloc_size_8 = add i32 %arr_size_reg_7, 4
	%malloc_ptr_9 = call i8* @__malloc(i32 %malloc_size_8)
	%arr_len_ptr_10 = bitcast i8* %malloc_ptr_9 to i32*
	store i32 %identifier_register_5, i32* %arr_len_ptr_10, align 4
	%arr_char_ptr_11 = getelementptr inbounds i8, i8* %malloc_ptr_9, i32 4
	%arr_ptr_12 = bitcast i8* %arr_char_ptr_11 to i32**
	%iter_ptr_13 = alloca i32**, align 4
	store i32** %arr_ptr_12, i32*** %iter_ptr_13, align 4
	%end_ptr_14 = getelementptr inbounds i32*, i32** %arr_ptr_12, i32 %identifier_register_5
	br label %init.0_get_new_array_condition

init.0_get_new_array_condition:
	%iter_tmp_ptr_15 = load i32**, i32*** %iter_ptr_13, align 4
	%cmp_iter_end_16 = icmp ne i32** %iter_tmp_ptr_15, %end_ptr_14
	br i1 %cmp_iter_end_16, label %init.0_get_new_array_loop, label %init.0_get_new_array_terminate

init.0_get_new_array_loop:
	%arr_size_reg_17 = mul i32 %identifier_register_6, 4
	%malloc_size_18 = add i32 %arr_size_reg_17, 4
	%malloc_ptr_19 = call i8* @__malloc(i32 %malloc_size_18)
	%arr_len_ptr_20 = bitcast i8* %malloc_ptr_19 to i32*
	store i32 %identifier_register_6, i32* %arr_len_ptr_20, align 4
	%arr_char_ptr_21 = getelementptr inbounds i8, i8* %malloc_ptr_19, i32 4
	%arr_ptr_22 = bitcast i8* %arr_char_ptr_21 to i32*
	store i32* %arr_ptr_22, i32** %iter_tmp_ptr_15, align 4
	%next_iter_ptr_23 = getelementptr inbounds i32*, i32** %iter_tmp_ptr_15, i32 1
	store i32** %next_iter_ptr_23, i32*** %iter_ptr_13, align 4
	br label %init.0_get_new_array_condition

init.0_get_new_array_terminate:
	store i32** %arr_ptr_12, i32*** @a, align 4
	%identifier_register_24 = load i32, i32* @n, align 4
	call void @printlnInt(i32 %identifier_register_24)
	%identifier_register_25 = load i32, i32* @m, align 4
	call void @printlnInt(i32 %identifier_register_25)
	%alloca_i_26 = alloca i32, align 4
	store i32 0, i32* %alloca_i_26, align 4
	%alloca_j_27 = alloca i32, align 4
	store i32 0, i32* %alloca_j_27, align 4
	%identifier_register_28 = load i32, i32* %alloca_i_26, align 4
	store i32 0, i32* %alloca_i_26, align 4
	br label %init.1_for_condition

init.1_for_condition:
	%identifier_register_29 = load i32, i32* %alloca_i_26, align 4
	%identifier_register_30 = load i32, i32* @n, align 4
	%res_31 = icmp slt i32 %identifier_register_29, %identifier_register_30
	br i1 %res_31, label %init.1_for_loop, label %init.1_for_terminate

init.1_for_loop:
	%identifier_register_32 = load i32, i32* %alloca_j_27, align 4
	store i32 0, i32* %alloca_j_27, align 4
	br label %init.2_for_condition

init.2_for_condition:
	%identifier_register_33 = load i32, i32* %alloca_j_27, align 4
	%identifier_register_34 = load i32, i32* @n, align 4
	%res_35 = icmp slt i32 %identifier_register_33, %identifier_register_34
	br i1 %res_35, label %init.2_for_loop, label %init.2_for_terminate

init.2_for_loop:
	%identifier_register_36 = load i32, i32* %alloca_j_27, align 4
	%identifier_register_37 = load i32, i32* %alloca_i_26, align 4
	%identifier_register_38 = load i32**, i32*** @a, align 4
	%array_id_ptr_39 = getelementptr inbounds i32*, i32** %identifier_register_38, i32 %identifier_register_37
	%res_array_40 = load i32*, i32** %array_id_ptr_39, align 4
	%array_id_ptr_41 = getelementptr inbounds i32, i32* %res_array_40, i32 %identifier_register_36
	%res_array_42 = load i32, i32* %array_id_ptr_41, align 4
	%identifier_register_43 = load i32, i32* @INF, align 4
	store i32 %identifier_register_43, i32* %array_id_ptr_41, align 4
	br label %init.2_for_execution

init.2_for_execution:
	%identifier_register_44 = load i32, i32* %alloca_j_27, align 4
	%res_45 = add i32 %identifier_register_44, 1
	store i32 %res_45, i32* %alloca_j_27, align 4
	br label %init.2_for_condition

init.2_for_terminate:
	br label %init.1_for_execution

init.1_for_execution:
	%identifier_register_46 = load i32, i32* %alloca_i_26, align 4
	%res_47 = add i32 %identifier_register_46, 1
	store i32 %res_47, i32* %alloca_i_26, align 4
	br label %init.1_for_condition

init.1_for_terminate:
	%identifier_register_48 = load i32, i32* %alloca_i_26, align 4
	store i32 0, i32* %alloca_i_26, align 4
	br label %init.3_for_condition

init.3_for_condition:
	%identifier_register_49 = load i32, i32* %alloca_i_26, align 4
	%identifier_register_50 = load i32, i32* @n, align 4
	%res_51 = icmp slt i32 %identifier_register_49, %identifier_register_50
	br i1 %res_51, label %init.3_for_loop, label %init.3_for_terminate

init.3_for_loop:
	%identifier_register_52 = load i32, i32* %alloca_i_26, align 4
	%identifier_register_53 = load i32, i32* %alloca_i_26, align 4
	%identifier_register_54 = load i32**, i32*** @a, align 4
	%array_id_ptr_55 = getelementptr inbounds i32*, i32** %identifier_register_54, i32 %identifier_register_53
	%res_array_56 = load i32*, i32** %array_id_ptr_55, align 4
	%array_id_ptr_57 = getelementptr inbounds i32, i32* %res_array_56, i32 %identifier_register_52
	%res_array_58 = load i32, i32* %array_id_ptr_57, align 4
	store i32 0, i32* %array_id_ptr_57, align 4
	br label %init.3_for_execution

init.3_for_execution:
	%identifier_register_59 = load i32, i32* %alloca_i_26, align 4
	%res_60 = add i32 %identifier_register_59, 1
	store i32 %res_60, i32* %alloca_i_26, align 4
	br label %init.3_for_condition

init.3_for_terminate:
	%identifier_register_61 = load i32, i32* %alloca_i_26, align 4
	store i32 0, i32* %alloca_i_26, align 4
	br label %init.4_for_condition

init.4_for_condition:
	%identifier_register_62 = load i32, i32* %alloca_i_26, align 4
	%identifier_register_63 = load i32, i32* @m, align 4
	%res_64 = icmp slt i32 %identifier_register_62, %identifier_register_63
	br i1 %res_64, label %init.4_for_loop, label %init.4_for_terminate

init.4_for_loop:
	%alloca_u_65 = alloca i32, align 4
	%ret_66 = call i32 @getInt()
	store i32 %ret_66, i32* %alloca_u_65, align 4
	%alloca_v_67 = alloca i32, align 4
	%ret_68 = call i32 @getInt()
	store i32 %ret_68, i32* %alloca_v_67, align 4
	%alloca_w_69 = alloca i32, align 4
	%ret_70 = call i32 @getInt()
	store i32 %ret_70, i32* %alloca_w_69, align 4
	%identifier_register_71 = load i32, i32* %alloca_v_67, align 4
	%identifier_register_72 = load i32, i32* %alloca_u_65, align 4
	%identifier_register_73 = load i32**, i32*** @a, align 4
	%array_id_ptr_74 = getelementptr inbounds i32*, i32** %identifier_register_73, i32 %identifier_register_72
	%res_array_75 = load i32*, i32** %array_id_ptr_74, align 4
	%array_id_ptr_76 = getelementptr inbounds i32, i32* %res_array_75, i32 %identifier_register_71
	%res_array_77 = load i32, i32* %array_id_ptr_76, align 4
	%identifier_register_78 = load i32, i32* %alloca_w_69, align 4
	store i32 %identifier_register_78, i32* %array_id_ptr_76, align 4
	br label %init.4_for_execution

init.4_for_execution:
	%identifier_register_79 = load i32, i32* %alloca_i_26, align 4
	%res_80 = add i32 %identifier_register_79, 1
	store i32 %res_80, i32* %alloca_i_26, align 4
	br label %init.4_for_condition

init.4_for_terminate:
	br label %init.return

init.return:
	ret void

}

define i32 @main() #0 {
main.entry:
	call void @__global_init_0()
	%return_ptr_0 = alloca i32, align 4
	store i32 0, i32* %return_ptr_0, align 4
	call void @init()
	%alloca_i_1 = alloca i32, align 4
	store i32 0, i32* %alloca_i_1, align 4
	%alloca_j_2 = alloca i32, align 4
	store i32 0, i32* %alloca_j_2, align 4
	%alloca_k_3 = alloca i32, align 4
	store i32 0, i32* %alloca_k_3, align 4
	%identifier_register_4 = load i32, i32* %alloca_k_3, align 4
	store i32 0, i32* %alloca_k_3, align 4
	br label %main.5_for_condition

main.5_for_condition:
	%identifier_register_5 = load i32, i32* %alloca_k_3, align 4
	%identifier_register_6 = load i32, i32* @n, align 4
	%res_7 = icmp slt i32 %identifier_register_5, %identifier_register_6
	br i1 %res_7, label %main.5_for_loop, label %main.5_for_terminate

main.5_for_loop:
	%identifier_register_8 = load i32, i32* %alloca_i_1, align 4
	store i32 0, i32* %alloca_i_1, align 4
	br label %main.6_for_condition

main.6_for_condition:
	%identifier_register_9 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_10 = load i32, i32* @n, align 4
	%res_11 = icmp slt i32 %identifier_register_9, %identifier_register_10
	br i1 %res_11, label %main.6_for_loop, label %main.6_for_terminate

main.6_for_loop:
	%identifier_register_12 = load i32, i32* %alloca_j_2, align 4
	store i32 0, i32* %alloca_j_2, align 4
	br label %main.7_for_condition

main.7_for_condition:
	%identifier_register_13 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_14 = load i32, i32* @n, align 4
	%res_15 = icmp slt i32 %identifier_register_13, %identifier_register_14
	br i1 %res_15, label %main.7_for_loop, label %main.7_for_terminate

main.7_for_loop:
	%identifier_register_16 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_17 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_18 = load i32**, i32*** @a, align 4
	%array_id_ptr_19 = getelementptr inbounds i32*, i32** %identifier_register_18, i32 %identifier_register_17
	%res_array_20 = load i32*, i32** %array_id_ptr_19, align 4
	%array_id_ptr_21 = getelementptr inbounds i32, i32* %res_array_20, i32 %identifier_register_16
	%res_array_22 = load i32, i32* %array_id_ptr_21, align 4
	%identifier_register_23 = load i32, i32* %alloca_k_3, align 4
	%identifier_register_24 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_25 = load i32**, i32*** @a, align 4
	%array_id_ptr_26 = getelementptr inbounds i32*, i32** %identifier_register_25, i32 %identifier_register_24
	%res_array_27 = load i32*, i32** %array_id_ptr_26, align 4
	%array_id_ptr_28 = getelementptr inbounds i32, i32* %res_array_27, i32 %identifier_register_23
	%res_array_29 = load i32, i32* %array_id_ptr_28, align 4
	%identifier_register_30 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_31 = load i32, i32* %alloca_k_3, align 4
	%identifier_register_32 = load i32**, i32*** @a, align 4
	%array_id_ptr_33 = getelementptr inbounds i32*, i32** %identifier_register_32, i32 %identifier_register_31
	%res_array_34 = load i32*, i32** %array_id_ptr_33, align 4
	%array_id_ptr_35 = getelementptr inbounds i32, i32* %res_array_34, i32 %identifier_register_30
	%res_array_36 = load i32, i32* %array_id_ptr_35, align 4
	%res_37 = add i32 %res_array_29, %res_array_36
	%res_38 = icmp sgt i32 %res_array_22, %res_37
	br i1 %res_38, label %main.8_if_true, label %main.8_if_terminate

main.8_if_true:
	%identifier_register_39 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_40 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_41 = load i32**, i32*** @a, align 4
	%array_id_ptr_42 = getelementptr inbounds i32*, i32** %identifier_register_41, i32 %identifier_register_40
	%res_array_43 = load i32*, i32** %array_id_ptr_42, align 4
	%array_id_ptr_44 = getelementptr inbounds i32, i32* %res_array_43, i32 %identifier_register_39
	%res_array_45 = load i32, i32* %array_id_ptr_44, align 4
	%identifier_register_46 = load i32, i32* %alloca_k_3, align 4
	%identifier_register_47 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_48 = load i32**, i32*** @a, align 4
	%array_id_ptr_49 = getelementptr inbounds i32*, i32** %identifier_register_48, i32 %identifier_register_47
	%res_array_50 = load i32*, i32** %array_id_ptr_49, align 4
	%array_id_ptr_51 = getelementptr inbounds i32, i32* %res_array_50, i32 %identifier_register_46
	%res_array_52 = load i32, i32* %array_id_ptr_51, align 4
	%identifier_register_53 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_54 = load i32, i32* %alloca_k_3, align 4
	%identifier_register_55 = load i32**, i32*** @a, align 4
	%array_id_ptr_56 = getelementptr inbounds i32*, i32** %identifier_register_55, i32 %identifier_register_54
	%res_array_57 = load i32*, i32** %array_id_ptr_56, align 4
	%array_id_ptr_58 = getelementptr inbounds i32, i32* %res_array_57, i32 %identifier_register_53
	%res_array_59 = load i32, i32* %array_id_ptr_58, align 4
	%res_60 = add i32 %res_array_52, %res_array_59
	store i32 %res_60, i32* %array_id_ptr_44, align 4
	br label %main.8_if_terminate

main.8_if_terminate:
	br label %main.7_for_execution

main.7_for_execution:
	%identifier_register_61 = load i32, i32* %alloca_j_2, align 4
	%res_62 = add i32 %identifier_register_61, 1
	store i32 %res_62, i32* %alloca_j_2, align 4
	br label %main.7_for_condition

main.7_for_terminate:
	br label %main.6_for_execution

main.6_for_execution:
	%identifier_register_63 = load i32, i32* %alloca_i_1, align 4
	%res_64 = add i32 %identifier_register_63, 1
	store i32 %res_64, i32* %alloca_i_1, align 4
	br label %main.6_for_condition

main.6_for_terminate:
	br label %main.5_for_execution

main.5_for_execution:
	%identifier_register_65 = load i32, i32* %alloca_k_3, align 4
	%res_66 = add i32 %identifier_register_65, 1
	store i32 %res_66, i32* %alloca_k_3, align 4
	br label %main.5_for_condition

main.5_for_terminate:
	%identifier_register_67 = load i32, i32* %alloca_i_1, align 4
	store i32 0, i32* %alloca_i_1, align 4
	br label %main.9_for_condition

main.9_for_condition:
	%identifier_register_68 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_69 = load i32, i32* @n, align 4
	%res_70 = icmp slt i32 %identifier_register_68, %identifier_register_69
	br i1 %res_70, label %main.9_for_loop, label %main.9_for_terminate

main.9_for_loop:
	%identifier_register_71 = load i32, i32* %alloca_j_2, align 4
	store i32 0, i32* %alloca_j_2, align 4
	br label %main.10_for_condition

main.10_for_condition:
	%identifier_register_72 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_73 = load i32, i32* @n, align 4
	%res_74 = icmp slt i32 %identifier_register_72, %identifier_register_73
	br i1 %res_74, label %main.10_for_loop, label %main.10_for_terminate

main.10_for_loop:
	%identifier_register_75 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_76 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_77 = load i32**, i32*** @a, align 4
	%array_id_ptr_78 = getelementptr inbounds i32*, i32** %identifier_register_77, i32 %identifier_register_76
	%res_array_79 = load i32*, i32** %array_id_ptr_78, align 4
	%array_id_ptr_80 = getelementptr inbounds i32, i32* %res_array_79, i32 %identifier_register_75
	%res_array_81 = load i32, i32* %array_id_ptr_80, align 4
	%identifier_register_82 = load i32, i32* @INF, align 4
	%res_83 = icmp eq i32 %res_array_81, %identifier_register_82
	br i1 %res_83, label %main.11_if_true, label %main.11_if_false

main.11_if_true:
	call void @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.0, i32 0, i32 0))
	br label %main.11_if_terminate

main.11_if_false:
	%identifier_register_84 = load i32, i32* %alloca_j_2, align 4
	%identifier_register_85 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_86 = load i32**, i32*** @a, align 4
	%array_id_ptr_87 = getelementptr inbounds i32*, i32** %identifier_register_86, i32 %identifier_register_85
	%res_array_88 = load i32*, i32** %array_id_ptr_87, align 4
	%array_id_ptr_89 = getelementptr inbounds i32, i32* %res_array_88, i32 %identifier_register_84
	%res_array_90 = load i32, i32* %array_id_ptr_89, align 4
	%ret_91 = call i8* @toString(i32 %res_array_90)
	call void @print(i8* %ret_91)
	br label %main.11_if_terminate

main.11_if_terminate:
	call void @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
	br label %main.10_for_execution

main.10_for_execution:
	%identifier_register_92 = load i32, i32* %alloca_j_2, align 4
	%res_93 = add i32 %identifier_register_92, 1
	store i32 %res_93, i32* %alloca_j_2, align 4
	br label %main.10_for_condition

main.10_for_terminate:
	call void @println(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
	br label %main.9_for_execution

main.9_for_execution:
	%identifier_register_94 = load i32, i32* %alloca_i_1, align 4
	%res_95 = add i32 %identifier_register_94, 1
	store i32 %res_95, i32* %alloca_i_1, align 4
	br label %main.9_for_condition

main.9_for_terminate:
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_96 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_96

}

define void @__global_init_0() #0 {
__global_init_0.entry:
	store i32 10000000, i32* @INF, align 4
	br label %__global_init_0.return

__global_init_0.return:
	ret void

}

