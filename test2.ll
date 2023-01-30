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



@n = global i32 0, align 4
@a = global i32** null, align 4

define i32 @main() #0 {
main.entry:
	%return_ptr_0 = alloca i32, align 4
	%iter_ptr_12 = alloca i32**, align 4
	store i32 0, i32* %return_ptr_0, align 4
	%identifier_register_1 = load i32, i32* @n, align 4
	%ret_2 = call i32 @getInt()
	store i32 %ret_2, i32* @n, align 4
	%identifier_register_3 = load i32**, i32*** @a, align 4
	%identifier_register_4 = load i32, i32* @n, align 4
	%identifier_register_5 = load i32, i32* @n, align 4
	%arr_size_reg_6 = mul i32 %identifier_register_4, 4
	%malloc_size_7 = add i32 %arr_size_reg_6, 4
	%malloc_ptr_8 = call i8* @__malloc(i32 %malloc_size_7)
	%arr_len_ptr_9 = bitcast i8* %malloc_ptr_8 to i32*
	store i32 %identifier_register_4, i32* %arr_len_ptr_9, align 4
	%arr_char_ptr_10 = getelementptr inbounds i8, i8* %malloc_ptr_8, i32 4
	%arr_ptr_11 = bitcast i8* %arr_char_ptr_10 to i32**
	store i32** %arr_ptr_11, i32*** %iter_ptr_12, align 4
	%end_ptr_13 = getelementptr inbounds i32*, i32** %arr_ptr_11, i32 %identifier_register_4
	br label %main.0_get_new_array_condition

main.0_get_new_array_condition:
	%iter_tmp_ptr_14 = load i32**, i32*** %iter_ptr_12, align 4
	%cmp_iter_end_15 = icmp ne i32** %iter_tmp_ptr_14, %end_ptr_13
	br i1 %cmp_iter_end_15, label %main.0_get_new_array_loop, label %main.0_get_new_array_terminate

main.0_get_new_array_loop:
	%arr_size_reg_16 = mul i32 %identifier_register_5, 4
	%malloc_size_17 = add i32 %arr_size_reg_16, 4
	%malloc_ptr_18 = call i8* @__malloc(i32 %malloc_size_17)
	%arr_len_ptr_19 = bitcast i8* %malloc_ptr_18 to i32*
	store i32 %identifier_register_5, i32* %arr_len_ptr_19, align 4
	%arr_char_ptr_20 = getelementptr inbounds i8, i8* %malloc_ptr_18, i32 4
	%arr_ptr_21 = bitcast i8* %arr_char_ptr_20 to i32*
	store i32* %arr_ptr_21, i32** %iter_tmp_ptr_14, align 4
	%next_iter_ptr_22 = getelementptr inbounds i32*, i32** %iter_tmp_ptr_14, i32 1
	store i32** %next_iter_ptr_22, i32*** %iter_ptr_12, align 4
	br label %main.0_get_new_array_condition

main.0_get_new_array_terminate:
	store i32** %arr_ptr_11, i32*** @a, align 4
	store i32 0, i32* %return_ptr_0, align 4
	br label %main.return

main.return:
	%return_val_23 = load i32, i32* %return_ptr_0, align 4
	ret i32 %return_val_23

}

