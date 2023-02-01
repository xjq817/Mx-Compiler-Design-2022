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

@.str.0 = private unnamed_addr constant [4 x i8] c"YES\00"
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00"


@w = global i32 0, align 4

define i32 @main() #0 {
main.entry:
	store i32 0, i32 %__tmp_12, align 4
	%identifier_register_1 = load i32, i32* @w, align 4
	%ret_2 = call i32 @getInt()
	store i32 %ret_2, i32* @w, align 4
	%identifier_register_4 = load i32, i32* @w, align 4
	%res_5 = srem i32 %identifier_register_4, 2
	%res_6 = icmp eq i32 %res_5, 0
	store i1 %res_6, i1 %__tmp_13, align 4
	br i1 %res_6, label %main.0_and_rhs_block, label %main.0_and_terminate_block

main.0_and_rhs_block:
	%identifier_register_7 = load i32, i32* @w, align 4
	%res_8 = icmp sgt i32 %identifier_register_7, 2
	%res_9 = and i1 %res_6, %res_8
	store i1 %res_9, i1 %__tmp_13, align 4
	br label %main.0_and_terminate_block

main.0_and_terminate_block:
	store i1 %__tmp_13, i1 %__tmp_14, align 4
	br i1 %__tmp_14, label %main.1_if_true, label %main.1_if_false

main.1_if_true:
	call void @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.0, i32 0, i32 0))
	br label %main.1_if_terminate

main.1_if_false:
	call void @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
	br label %main.1_if_terminate

main.1_if_terminate:
	store i32 0, i32 %__tmp_12, align 4
	br label %main.return

main.return:
	store i32 %__tmp_12, i32 %__tmp_15, align 4
	ret i32 %__tmp_15

}

