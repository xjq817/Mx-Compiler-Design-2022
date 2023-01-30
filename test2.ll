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
@.str.1 = private unnamed_addr constant [4 x i8] c">> \00"


@n = global i32 0, align 4
@p = global i32 0, align 4
@k = global i32 0, align 4
@i = global i32 0, align 4

define i32 @main() #0 {
main.entry:
	%return_ptr_0 = alloca i32, align 4
	store i32 0, i32* %return_ptr_0, align 4
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
	%identifier_register_11 = load i32, i32* @p, align 4
	%identifier_register_12 = load i32, i32* @k, align 4
	%res_13 = add i32 %identifier_register_11, %identifier_register_12
	%identifier_register_14 = load i32, i32* @n, align 4
	%res_15 = icmp slt i32 %res_13, %identifier_register_14
	br i1 %res_15, label %main.1_if_true, label %main.1_if_terminate

main.1_if_true:
	call void @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
	br label %main.1_if_terminate

main.1_if_terminate:
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_16 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_16

}

