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

@.str.0 = private unnamed_addr constant [1 x i8] c"\00"


@a = global i32* null, align 4

define i32 @main() #0 {
main.entry:
	call void @__global_init_0()
	%return_ptr_0 = alloca i32, align 4
	store i32 0, i32* %return_ptr_0, align 4
	%alloca_b_1 = alloca i32**, align 4
	%arr_size_reg_2 = mul i32 4, 4
	%malloc_size_3 = add i32 %arr_size_reg_2, 4
	%malloc_ptr_4 = call i8* @__malloc(i32 %malloc_size_3)
	%arr_len_ptr_5 = bitcast i8* %malloc_ptr_4 to i32*
	store i32 4, i32* %arr_len_ptr_5, align 4
	%arr_char_ptr_6 = getelementptr inbounds i8, i8* %malloc_ptr_4, i32 4
	%arr_ptr_7 = bitcast i8* %arr_char_ptr_6 to i32**
	store i32** %arr_ptr_7, i32*** %alloca_b_1, align 4
	%alloca_i_8 = alloca i32, align 4
	store i32 0, i32* %alloca_i_8, align 4
	%identifier_register_9 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_10 = getelementptr inbounds i32*, i32** %identifier_register_9, i32 0
	%res_array_11 = load i32*, i32** %array_id_ptr_10, align 4
	%identifier_register_12 = load i32*, i32** @a, align 4
	store i32* %identifier_register_12, i32** %array_id_ptr_10, align 4
	%identifier_register_13 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_14 = getelementptr inbounds i32*, i32** %identifier_register_13, i32 1
	%res_array_15 = load i32*, i32** %array_id_ptr_14, align 4
	%identifier_register_16 = load i32*, i32** @a, align 4
	store i32* %identifier_register_16, i32** %array_id_ptr_14, align 4
	%identifier_register_17 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_18 = getelementptr inbounds i32*, i32** %identifier_register_17, i32 2
	%res_array_19 = load i32*, i32** %array_id_ptr_18, align 4
	%identifier_register_20 = load i32*, i32** @a, align 4
	store i32* %identifier_register_20, i32** %array_id_ptr_18, align 4
	%identifier_register_21 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_22 = getelementptr inbounds i32*, i32** %identifier_register_21, i32 3
	%res_array_23 = load i32*, i32** %array_id_ptr_22, align 4
	%identifier_register_24 = load i32*, i32** @a, align 4
	store i32* %identifier_register_24, i32** %array_id_ptr_22, align 4
	%identifier_register_25 = load i32**, i32*** %alloca_b_1, align 4
	%arr_to_int_27 = bitcast i32** %identifier_register_25 to i32*
	%arr_len_ptr_26 = getelementptr inbounds i32, i32* %arr_to_int_27, i32 -1
	%arr_len_28 = load i32, i32* %arr_len_ptr_26, align 4
	%ret_29 = call i8* @toString(i32 %arr_len_28)
	call void @println(i8* %ret_29)
	%identifier_register_30 = load i32, i32* %alloca_i_8, align 4
	store i32 0, i32* %alloca_i_8, align 4
	br label %main.0_for_condition

main.0_for_condition:
	%identifier_register_31 = load i32, i32* %alloca_i_8, align 4
	%identifier_register_32 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_33 = getelementptr inbounds i32*, i32** %identifier_register_32, i32 0
	%res_array_34 = load i32*, i32** %array_id_ptr_33, align 4
	%arr_to_int_36 = bitcast i32* %res_array_34 to i32*
	%arr_len_ptr_35 = getelementptr inbounds i32, i32* %arr_to_int_36, i32 -1
	%arr_len_37 = load i32, i32* %arr_len_ptr_35, align 4
	%res_38 = icmp slt i32 %identifier_register_31, %arr_len_37
	br i1 %res_38, label %main.0_for_loop, label %main.0_for_terminate

main.0_for_loop:
	%identifier_register_39 = load i32, i32* %alloca_i_8, align 4
	%identifier_register_40 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_41 = getelementptr inbounds i32*, i32** %identifier_register_40, i32 0
	%res_array_42 = load i32*, i32** %array_id_ptr_41, align 4
	%array_id_ptr_43 = getelementptr inbounds i32, i32* %res_array_42, i32 %identifier_register_39
	%res_array_44 = load i32, i32* %array_id_ptr_43, align 4
	%ret_45 = call i32 @getInt()
	store i32 %ret_45, i32* %array_id_ptr_43, align 4
	br label %main.0_for_execution

main.0_for_execution:
	%identifier_register_46 = load i32, i32* %alloca_i_8, align 4
	%tmp_47 = load i32, i32* %alloca_i_8, align 4
	%res_48 = add i32 %identifier_register_46, 1
	store i32 %res_48, i32* %alloca_i_8, align 4
	br label %main.0_for_condition

main.0_for_terminate:
	%identifier_register_49 = load i32, i32* %alloca_i_8, align 4
	store i32 0, i32* %alloca_i_8, align 4
	br label %main.1_for_condition

main.1_for_condition:
	%identifier_register_50 = load i32, i32* %alloca_i_8, align 4
	%identifier_register_51 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_52 = getelementptr inbounds i32*, i32** %identifier_register_51, i32 1
	%res_array_53 = load i32*, i32** %array_id_ptr_52, align 4
	%arr_to_int_55 = bitcast i32* %res_array_53 to i32*
	%arr_len_ptr_54 = getelementptr inbounds i32, i32* %arr_to_int_55, i32 -1
	%arr_len_56 = load i32, i32* %arr_len_ptr_54, align 4
	%res_57 = icmp slt i32 %identifier_register_50, %arr_len_56
	br i1 %res_57, label %main.1_for_loop, label %main.1_for_terminate

main.1_for_loop:
	%identifier_register_58 = load i32, i32* %alloca_i_8, align 4
	%identifier_register_59 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_60 = getelementptr inbounds i32*, i32** %identifier_register_59, i32 1
	%res_array_61 = load i32*, i32** %array_id_ptr_60, align 4
	%array_id_ptr_62 = getelementptr inbounds i32, i32* %res_array_61, i32 %identifier_register_58
	%res_array_63 = load i32, i32* %array_id_ptr_62, align 4
	%ret_64 = call i8* @toString(i32 %res_array_63)
	call void @print(i8* %ret_64)
	br label %main.1_for_execution

main.1_for_execution:
	%identifier_register_65 = load i32, i32* %alloca_i_8, align 4
	%tmp_66 = load i32, i32* %alloca_i_8, align 4
	%res_67 = add i32 %identifier_register_65, 1
	store i32 %res_67, i32* %alloca_i_8, align 4
	br label %main.1_for_condition

main.1_for_terminate:
	call void @println(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.0, i32 0, i32 0))
	%identifier_register_68 = load i32, i32* %alloca_i_8, align 4
	store i32 0, i32* %alloca_i_8, align 4
	br label %main.2_for_condition

main.2_for_condition:
	%identifier_register_69 = load i32, i32* %alloca_i_8, align 4
	%identifier_register_70 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_71 = getelementptr inbounds i32*, i32** %identifier_register_70, i32 2
	%res_array_72 = load i32*, i32** %array_id_ptr_71, align 4
	%arr_to_int_74 = bitcast i32* %res_array_72 to i32*
	%arr_len_ptr_73 = getelementptr inbounds i32, i32* %arr_to_int_74, i32 -1
	%arr_len_75 = load i32, i32* %arr_len_ptr_73, align 4
	%res_76 = icmp slt i32 %identifier_register_69, %arr_len_75
	br i1 %res_76, label %main.2_for_loop, label %main.2_for_terminate

main.2_for_loop:
	%identifier_register_77 = load i32, i32* %alloca_i_8, align 4
	%identifier_register_78 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_79 = getelementptr inbounds i32*, i32** %identifier_register_78, i32 2
	%res_array_80 = load i32*, i32** %array_id_ptr_79, align 4
	%array_id_ptr_81 = getelementptr inbounds i32, i32* %res_array_80, i32 %identifier_register_77
	%res_array_82 = load i32, i32* %array_id_ptr_81, align 4
	store i32 0, i32* %array_id_ptr_81, align 4
	br label %main.2_for_execution

main.2_for_execution:
	%identifier_register_83 = load i32, i32* %alloca_i_8, align 4
	%tmp_84 = load i32, i32* %alloca_i_8, align 4
	%res_85 = add i32 %identifier_register_83, 1
	store i32 %res_85, i32* %alloca_i_8, align 4
	br label %main.2_for_condition

main.2_for_terminate:
	%identifier_register_86 = load i32, i32* %alloca_i_8, align 4
	store i32 0, i32* %alloca_i_8, align 4
	br label %main.3_for_condition

main.3_for_condition:
	%identifier_register_87 = load i32, i32* %alloca_i_8, align 4
	%identifier_register_88 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_89 = getelementptr inbounds i32*, i32** %identifier_register_88, i32 3
	%res_array_90 = load i32*, i32** %array_id_ptr_89, align 4
	%arr_to_int_92 = bitcast i32* %res_array_90 to i32*
	%arr_len_ptr_91 = getelementptr inbounds i32, i32* %arr_to_int_92, i32 -1
	%arr_len_93 = load i32, i32* %arr_len_ptr_91, align 4
	%res_94 = icmp slt i32 %identifier_register_87, %arr_len_93
	br i1 %res_94, label %main.3_for_loop, label %main.3_for_terminate

main.3_for_loop:
	%identifier_register_95 = load i32, i32* %alloca_i_8, align 4
	%identifier_register_96 = load i32**, i32*** %alloca_b_1, align 4
	%array_id_ptr_97 = getelementptr inbounds i32*, i32** %identifier_register_96, i32 3
	%res_array_98 = load i32*, i32** %array_id_ptr_97, align 4
	%array_id_ptr_99 = getelementptr inbounds i32, i32* %res_array_98, i32 %identifier_register_95
	%res_array_100 = load i32, i32* %array_id_ptr_99, align 4
	%ret_101 = call i8* @toString(i32 %res_array_100)
	call void @print(i8* %ret_101)
	br label %main.3_for_execution

main.3_for_execution:
	%identifier_register_102 = load i32, i32* %alloca_i_8, align 4
	%tmp_103 = load i32, i32* %alloca_i_8, align 4
	%res_104 = add i32 %identifier_register_102, 1
	store i32 %res_104, i32* %alloca_i_8, align 4
	br label %main.3_for_condition

main.3_for_terminate:
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_105 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_105

}

define void @__global_init_0() #0 {
__global_init_0.entry:
	%arr_size_reg_0 = mul i32 4, 4
	%malloc_size_1 = add i32 %arr_size_reg_0, 4
	%malloc_ptr_2 = call i8* @__malloc(i32 %malloc_size_1)
	%arr_len_ptr_3 = bitcast i8* %malloc_ptr_2 to i32*
	store i32 4, i32* %arr_len_ptr_3, align 4
	%arr_char_ptr_4 = getelementptr inbounds i8, i8* %malloc_ptr_2, i32 4
	%arr_ptr_5 = bitcast i8* %arr_char_ptr_4 to i32*
	store i32* %arr_ptr_5, i32** @a, align 4
	br label %__global_init_0.return

__global_init_0.return:
	ret void

}

