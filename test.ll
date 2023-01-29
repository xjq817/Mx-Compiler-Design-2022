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
	%alloca_b_1 = alloca i32*, align 4
	%identifier_register_2 = load i32*, i32** @a, align 4
	%arr_to_int_4 = bitcast i32* %identifier_register_2 to i32*
	%arr_len_ptr_3 = getelementptr inbounds i32, i32* %arr_to_int_4, i32 -1
	%arr_len_5 = load i32, i32* %arr_len_ptr_3, align 4
	%arr_size_reg_6 = mul i32 %arr_len_5, 4
	%malloc_size_7 = add i32 %arr_size_reg_6, 4
	%malloc_ptr_8 = call i8* @__malloc(i32 %malloc_size_7)
	%arr_len_ptr_9 = bitcast i8* %malloc_ptr_8 to i32*
	store i32 %arr_len_5, i32* %arr_len_ptr_9, align 4
	%arr_char_ptr_10 = getelementptr inbounds i8, i8* %malloc_ptr_8, i32 4
	%arr_ptr_11 = bitcast i8* %arr_char_ptr_10 to i32*
	store i32* %arr_ptr_11, i32** %alloca_b_1, align 4
	%alloca_i_12 = alloca i32, align 4
	store i32 0, i32* %alloca_i_12, align 4
	%identifier_register_13 = load i32, i32* %alloca_i_12, align 4
	store i32 0, i32* %alloca_i_12, align 4
	br label %main.0_for_condition

main.0_for_condition:
	%identifier_register_14 = load i32, i32* %alloca_i_12, align 4
	%identifier_register_15 = load i32*, i32** @a, align 4
	%arr_to_int_17 = bitcast i32* %identifier_register_15 to i32*
	%arr_len_ptr_16 = getelementptr inbounds i32, i32* %arr_to_int_17, i32 -1
	%arr_len_18 = load i32, i32* %arr_len_ptr_16, align 4
	%res_19 = icmp slt i32 %identifier_register_14, %arr_len_18
	br i1 %res_19, label %main.0_for_loop, label %main.0_for_terminate

main.0_for_loop:
	%identifier_register_20 = load i32, i32* %alloca_i_12, align 4
	%identifier_register_21 = load i32*, i32** @a, align 4
	%array_id_ptr_22 = getelementptr inbounds i32, i32* %identifier_register_21, i32 %identifier_register_20
	%res_array_23 = load i32, i32* %array_id_ptr_22, align 4
	store i32 0, i32* %array_id_ptr_22, align 4
	%identifier_register_24 = load i32, i32* %alloca_i_12, align 4
	%identifier_register_25 = load i32*, i32** %alloca_b_1, align 4
	%array_id_ptr_26 = getelementptr inbounds i32, i32* %identifier_register_25, i32 %identifier_register_24
	%res_array_27 = load i32, i32* %array_id_ptr_26, align 4
	%ret_28 = call i32 @getInt()
	store i32 %ret_28, i32* %array_id_ptr_26, align 4
	br label %main.0_for_execution

main.0_for_execution:
	%identifier_register_29 = load i32, i32* %alloca_i_12, align 4
	%tmp_30 = load i32, i32* %alloca_i_12, align 4
	%res_31 = add i32 %identifier_register_29, 1
	store i32 %res_31, i32* %alloca_i_12, align 4
	br label %main.0_for_condition

main.0_for_terminate:
	%identifier_register_32 = load i32, i32* %alloca_i_12, align 4
	store i32 0, i32* %alloca_i_12, align 4
	br label %main.1_for_condition

main.1_for_condition:
	%identifier_register_33 = load i32, i32* %alloca_i_12, align 4
	%identifier_register_34 = load i32*, i32** @a, align 4
	%arr_to_int_36 = bitcast i32* %identifier_register_34 to i32*
	%arr_len_ptr_35 = getelementptr inbounds i32, i32* %arr_to_int_36, i32 -1
	%arr_len_37 = load i32, i32* %arr_len_ptr_35, align 4
	%res_38 = icmp slt i32 %identifier_register_33, %arr_len_37
	br i1 %res_38, label %main.1_for_loop, label %main.1_for_terminate

main.1_for_loop:
	%identifier_register_39 = load i32, i32* %alloca_i_12, align 4
	%identifier_register_40 = load i32*, i32** @a, align 4
	%array_id_ptr_41 = getelementptr inbounds i32, i32* %identifier_register_40, i32 %identifier_register_39
	%res_array_42 = load i32, i32* %array_id_ptr_41, align 4
	%ret_43 = call i8* @toString(i32 %res_array_42)
	call void @print(i8* %ret_43)
	br label %main.1_for_execution

main.1_for_execution:
	%identifier_register_44 = load i32, i32* %alloca_i_12, align 4
	%tmp_45 = load i32, i32* %alloca_i_12, align 4
	%res_46 = add i32 %identifier_register_44, 1
	store i32 %res_46, i32* %alloca_i_12, align 4
	br label %main.1_for_condition

main.1_for_terminate:
	call void @println(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.0, i32 0, i32 0))
	%identifier_register_47 = load i32*, i32** @a, align 4
	%identifier_register_48 = load i32*, i32** %alloca_b_1, align 4
	store i32* %identifier_register_48, i32** @a, align 4
	%identifier_register_49 = load i32, i32* %alloca_i_12, align 4
	store i32 0, i32* %alloca_i_12, align 4
	br label %main.2_for_condition

main.2_for_condition:
	%identifier_register_50 = load i32, i32* %alloca_i_12, align 4
	%identifier_register_51 = load i32*, i32** @a, align 4
	%arr_to_int_53 = bitcast i32* %identifier_register_51 to i32*
	%arr_len_ptr_52 = getelementptr inbounds i32, i32* %arr_to_int_53, i32 -1
	%arr_len_54 = load i32, i32* %arr_len_ptr_52, align 4
	%res_55 = icmp slt i32 %identifier_register_50, %arr_len_54
	br i1 %res_55, label %main.2_for_loop, label %main.2_for_terminate

main.2_for_loop:
	%identifier_register_56 = load i32, i32* %alloca_i_12, align 4
	%identifier_register_57 = load i32*, i32** @a, align 4
	%array_id_ptr_58 = getelementptr inbounds i32, i32* %identifier_register_57, i32 %identifier_register_56
	%res_array_59 = load i32, i32* %array_id_ptr_58, align 4
	%ret_60 = call i8* @toString(i32 %res_array_59)
	call void @print(i8* %ret_60)
	br label %main.2_for_execution

main.2_for_execution:
	%identifier_register_61 = load i32, i32* %alloca_i_12, align 4
	%tmp_62 = load i32, i32* %alloca_i_12, align 4
	%res_63 = add i32 %identifier_register_61, 1
	store i32 %res_63, i32* %alloca_i_12, align 4
	br label %main.2_for_condition

main.2_for_terminate:
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_64 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_64

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

