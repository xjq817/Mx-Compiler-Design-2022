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

@.str.0 = private unnamed_addr constant [4 x i8] c"<< \00"
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00"
@.str.2 = private unnamed_addr constant [3 x i8] c") \00"
@.str.3 = private unnamed_addr constant [2 x i8] c" \00"
@.str.4 = private unnamed_addr constant [4 x i8] c">> \00"


@n = global i32 0, align 4
@p = global i32 0, align 4
@k = global i32 0, align 4
@i = global i32 0, align 4

define i32 @main() #0 {
main.entry:
	store i32 0, i32* %__tmp_43, align 4
	%identifier_register_1 = load i32, i32* @n, align 4
	%ret_2 = call i32 @getInt()
	store i32 %ret_2, i32* @n, align 4
	%identifier_register_3 = load i32, i32* @p, align 4
	%ret_4 = call i32 @getInt()
	store i32 %ret_4, i32* @p, align 4
	%identifier_register_5 = load i32, i32* @k, align 4
	%ret_6 = call i32 @getInt()
	store i32 %ret_6, i32* @k, align 4
	%identifier_register_7 = load i32, i32* @p, align 4
	%identifier_register_8 = load i32, i32* @k, align 4
	%res_9 = sub nsw i32 %identifier_register_7, %identifier_register_8
	%res_10 = icmp sgt i32 %res_9, 1
	br i1 %res_10, label %main.0_if_true, label %main.0_if_terminate

main.0_if_true:
	call void @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.0, i32 0, i32 0))
	br label %main.0_if_terminate

main.0_if_terminate:
	%identifier_register_11 = load i32, i32* @i, align 4
	%identifier_register_12 = load i32, i32* @p, align 4
	%identifier_register_13 = load i32, i32* @k, align 4
	%res_14 = sub nsw i32 %identifier_register_12, %identifier_register_13
	store i32 %res_14, i32* @i, align 4
	br label %main.1_for_condition

main.1_for_condition:
	%identifier_register_15 = load i32, i32* @i, align 4
	%identifier_register_16 = load i32, i32* @p, align 4
	%identifier_register_17 = load i32, i32* @k, align 4
	%res_18 = add i32 %identifier_register_16, %identifier_register_17
	%res_19 = icmp sle i32 %identifier_register_15, %res_18
	br i1 %res_19, label %main.1_for_loop, label %main.1_for_terminate

main.1_for_loop:
	%identifier_register_21 = load i32, i32* @i, align 4
	%res_22 = icmp sle i32 1, %identifier_register_21
	store i1 %res_22, i1* %__tmp_44, align 4
	br i1 %res_22, label %main.2_and_rhs_block, label %main.2_and_terminate_block

main.2_and_rhs_block:
	%identifier_register_23 = load i32, i32* @i, align 4
	%identifier_register_24 = load i32, i32* @n, align 4
	%res_25 = icmp sle i32 %identifier_register_23, %identifier_register_24
	%res_26 = and i1 %res_22, %res_25
	store i1 %res_26, i1* %__tmp_44, align 4
	br label %main.2_and_terminate_block

main.2_and_terminate_block:
	store i1 %__tmp_44, i1* %__tmp_45, align 4
	br i1 %__tmp_45, label %main.3_if_true, label %main.3_if_terminate

main.3_if_true:
	%identifier_register_28 = load i32, i32* @i, align 4
	%identifier_register_29 = load i32, i32* @p, align 4
	%res_30 = icmp eq i32 %identifier_register_28, %identifier_register_29
	br i1 %res_30, label %main.4_if_true, label %main.4_if_false

main.4_if_true:
	call void @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
	%identifier_register_31 = load i32, i32* @i, align 4
	%ret_32 = call i8* @toString(i32 %identifier_register_31)
	call void @print(i8* %ret_32)
	call void @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
	br label %main.4_if_terminate

main.4_if_false:
	%identifier_register_33 = load i32, i32* @i, align 4
	call void @printInt(i32 %identifier_register_33)
	call void @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
	br label %main.4_if_terminate

main.4_if_terminate:
	br label %main.3_if_terminate

main.3_if_terminate:
	br label %main.1_for_execution

main.1_for_execution:
	%identifier_register_34 = load i32, i32* @i, align 4
	%tmp_35 = load i32, i32* @i, align 4
	%res_36 = add i32 %identifier_register_34, 1
	store i32 %res_36, i32* @i, align 4
	br label %main.1_for_condition

main.1_for_terminate:
	%identifier_register_37 = load i32, i32* @p, align 4
	%identifier_register_38 = load i32, i32* @k, align 4
	%res_39 = add i32 %identifier_register_37, %identifier_register_38
	%identifier_register_40 = load i32, i32* @n, align 4
	%res_41 = icmp slt i32 %res_39, %identifier_register_40
	br i1 %res_41, label %main.5_if_true, label %main.5_if_terminate

main.5_if_true:
	call void @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
	br label %main.5_if_terminate

main.5_if_terminate:
	store i32 0, i32* %__tmp_43, align 4
	br label %main.return

main.return:
	store i32 %__tmp_43, i32* %__tmp_46, align 4
	ret i32 %__tmp_46

}

