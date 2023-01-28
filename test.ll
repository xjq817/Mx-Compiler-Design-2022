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

@.str.0 = private unnamed_addr constant [2 x i8] c" \00"
@.str.1 = private unnamed_addr constant [8 x i8] c"Total: \00"


@N = global i32 0, align 4
@b = global i1* null, align 4
@resultCount = global i32 0, align 4

define i32 @main() #0 {
main.entry:
	call void @__global_init_0()
	call void @__global_init_1()
	call void @__global_init_2()
	%return_ptr_0 = alloca i32, align 4
	store i32 0, i32* %return_ptr_0, align 4
	%alloca_i_1 = alloca i32, align 4
	store i32 0, i32* %alloca_i_1, align 4
	%identifier_register_2 = load i32, i32* %alloca_i_1, align 4
	store i32 1, i32* %alloca_i_1, align 4
	br label %main.0_for_condition

main.0_for_condition:
	%identifier_register_3 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_4 = load i32, i32* @N, align 4
	%res_5 = icmp sle i32 %identifier_register_3, %identifier_register_4
	br i1 %res_5, label %main.0_for_loop, label %main.0_for_terminate

main.0_for_loop:
	%identifier_register_6 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_7 = load i1*, i1** @b, align 4
	%array_id_ptr_8 = getelementptr inbounds i1, i1* %identifier_register_7, i32 %identifier_register_6
	%res_array_9 = load i1, i1* %array_id_ptr_8, align 4
	store i1 true, i1* %array_id_ptr_8, align 4
	br label %main.0_for_execution

main.0_for_execution:
	%identifier_register_10 = load i32, i32* %alloca_i_1, align 4
	%tmp_11 = load i32, i32* %alloca_i_1, align 4
	%res_12 = add i32 %identifier_register_10, 1
	store i32 %res_12, i32* %alloca_i_1, align 4
	br label %main.0_for_condition

main.0_for_terminate:
	%identifier_register_13 = load i32, i32* %alloca_i_1, align 4
	store i32 2, i32* %alloca_i_1, align 4
	br label %main.1_for_condition

main.1_for_condition:
	%identifier_register_14 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_15 = load i32, i32* @N, align 4
	%res_16 = icmp sle i32 %identifier_register_14, %identifier_register_15
	br i1 %res_16, label %main.1_for_loop, label %main.1_for_terminate

main.1_for_loop:
	%identifier_register_17 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_18 = load i1*, i1** @b, align 4
	%array_id_ptr_19 = getelementptr inbounds i1, i1* %identifier_register_18, i32 %identifier_register_17
	%res_array_20 = load i1, i1* %array_id_ptr_19, align 4
	br i1 %res_array_20, label %main.2_if_true, label %main.2_if_terminate

main.2_if_true:
	%alloca_count_21 = alloca i32, align 4
	store i32 2, i32* %alloca_count_21, align 4
	%phi_22 = alloca i1, align 4
	%identifier_register_23 = load i32, i32* %alloca_i_1, align 4
	%res_24 = icmp sgt i32 %identifier_register_23, 3
	store i1 %res_24, i1* %phi_22, align 4
	br i1 %res_24, label %main.3_and_rhs_block, label %main.3_and_terminate_block

main.3_and_rhs_block:
	%identifier_register_25 = load i32, i32* %alloca_i_1, align 4
	%res_26 = sub nsw i32 %identifier_register_25, 2
	%identifier_register_27 = load i1*, i1** @b, align 4
	%array_id_ptr_28 = getelementptr inbounds i1, i1* %identifier_register_27, i32 %res_26
	%res_array_29 = load i1, i1* %array_id_ptr_28, align 4
	%res_30 = and i1 %res_24, %res_array_29
	store i1 %res_30, i1* %phi_22, align 4
	br label %main.3_and_terminate_block

main.3_and_terminate_block:
	%ret_31 = load i1, i1* %phi_22, align 4
	br i1 %ret_31, label %main.4_if_true, label %main.4_if_terminate

main.4_if_true:
	%identifier_register_32 = load i32, i32* @resultCount, align 4
	%tmp_33 = load i32, i32* @resultCount, align 4
	%res_34 = add i32 %identifier_register_32, 1
	store i32 %res_34, i32* @resultCount, align 4
	%identifier_register_35 = load i32, i32* %alloca_i_1, align 4
	%res_36 = sub nsw i32 %identifier_register_35, 2
	%ret_37 = call i8* @toString(i32 %res_36)
	%res_38 = call i8* @__merge_string(i8* %ret_37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.0, i32 0, i32 0))
	%identifier_register_39 = load i32, i32* %alloca_i_1, align 4
	%ret_40 = call i8* @toString(i32 %identifier_register_39)
	%res_41 = call i8* @__merge_string(i8* %res_38, i8* %ret_40)
	call void @println(i8* %res_41)
	br label %main.4_if_terminate

main.4_if_terminate:
	br label %main.5_while_condition

main.5_while_condition:
	%identifier_register_42 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_43 = load i32, i32* %alloca_count_21, align 4
	%res_44 = mul i32 %identifier_register_42, %identifier_register_43
	%identifier_register_45 = load i32, i32* @N, align 4
	%res_46 = icmp sle i32 %res_44, %identifier_register_45
	br i1 %res_46, label %main.5_while_loop, label %main.5_while_terminate

main.5_while_loop:
	%identifier_register_47 = load i32, i32* %alloca_i_1, align 4
	%identifier_register_48 = load i32, i32* %alloca_count_21, align 4
	%res_49 = mul i32 %identifier_register_47, %identifier_register_48
	%identifier_register_50 = load i1*, i1** @b, align 4
	%array_id_ptr_51 = getelementptr inbounds i1, i1* %identifier_register_50, i32 %res_49
	%res_array_52 = load i1, i1* %array_id_ptr_51, align 4
	store i1 false, i1* %array_id_ptr_51, align 4
	%identifier_register_53 = load i32, i32* %alloca_count_21, align 4
	%tmp_54 = load i32, i32* %alloca_count_21, align 4
	%res_55 = add i32 %identifier_register_53, 1
	store i32 %res_55, i32* %alloca_count_21, align 4
	br label %main.5_while_condition

main.5_while_terminate:
	br label %main.2_if_terminate

main.2_if_terminate:
	br label %main.1_for_execution

main.1_for_execution:
	%identifier_register_56 = load i32, i32* %alloca_i_1, align 4
	%tmp_57 = load i32, i32* %alloca_i_1, align 4
	%res_58 = add i32 %identifier_register_56, 1
	store i32 %res_58, i32* %alloca_i_1, align 4
	br label %main.1_for_condition

main.1_for_terminate:
	%identifier_register_59 = load i32, i32* @resultCount, align 4
	%ret_60 = call i8* @toString(i32 %identifier_register_59)
	%res_61 = call i8* @__merge_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %ret_60)
	call void @println(i8* %res_61)
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_62 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_62

}

define void @__global_init_0() #0 {
__global_init_0.entry:
	store i32 15000, i32* @N, align 4
	br label %__global_init_0.return

__global_init_0.return:
	ret void

}

define void @__global_init_1() #0 {
__global_init_1.entry:
	%arr_size_reg_0 = mul i32 15001, 4
	%malloc_size_1 = add i32 %arr_size_reg_0, 4
	%malloc_ptr_2 = call i8* @__malloc(i32 %malloc_size_1)
	%arr_len_ptr_3 = bitcast i8* %malloc_ptr_2 to i32*
	store i32 15001, i32* %arr_len_ptr_3, align 4
	%arr_char_ptr_4 = getelementptr inbounds i8, i8* %malloc_ptr_2, i32 4
	%arr_ptr_5 = bitcast i8* %arr_char_ptr_4 to i1*
	store i1* %arr_ptr_5, i1** @b, align 4
	br label %__global_init_1.return

__global_init_1.return:
	ret void

}

define void @__global_init_2() #0 {
__global_init_2.entry:
	store i32 0, i32* @resultCount, align 4
	br label %__global_init_2.return

__global_init_2.return:
	ret void

}

