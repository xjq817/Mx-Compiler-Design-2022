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





define i32 @min(i32 %a_0, i32 %b_1) #0 {
min.entry:
	%parameter_ptr_2 = alloca i32, align 4
	%parameter_ptr_3 = alloca i32, align 4
	store i32 %a_0, i32* %parameter_ptr_2, align 4
	store i32 %b_1, i32* %parameter_ptr_3, align 4
	%return_ptr_4 = alloca i32, align 4
	%identifier_register_5 = load i32, i32* %parameter_ptr_2, align 4
	%identifier_register_6 = load i32, i32* %parameter_ptr_3, align 4
	%res_7 = icmp sle i32 %identifier_register_5, %identifier_register_6
	br i1 %res_7, label %min.0_if_true, label %min.0_if_terminate

min.0_if_true:
	%identifier_register_8 = load i32, i32* %parameter_ptr_2, align 4
	store i32 %identifier_register_8, i32* %return_ptr_4, align 4
	br label %min.return

min.0_if_terminate:
	%identifier_register_9 = load i32, i32* %parameter_ptr_3, align 4
	store i32 %identifier_register_9, i32* %return_ptr_4, align 4
	br label %min.return

min.return:
	%return_val_10 = load i32, i32* %return_ptr_4, align 4
	ret i32 %return_val_10

}

define i32 @main() #0 {
main.entry:
	%return_ptr_0 = alloca i32, align 4
	store i32 0, i32* %return_ptr_0, align 4
	%alloca_x_1 = alloca i32, align 4
	store i32 10, i32* %alloca_x_1, align 4
	%alloca_y_2 = alloca i32, align 4
	store i32 20, i32* %alloca_y_2, align 4
	%identifier_register_3 = load i32, i32* %alloca_x_1, align 4
	%identifier_register_4 = load i32, i32* %alloca_y_2, align 4
	%ret_5 = call i32 @min(i32 %identifier_register_3, i32 %identifier_register_4)
	store i32 %ret_5, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_6 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_6

}

