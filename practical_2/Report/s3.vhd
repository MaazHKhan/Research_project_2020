when s3 =>     
	file_open(text_var,"D:\Documents\Semester_2_2020\EES_424\Practicals\practical_2\csv\write.txt", append_mode); 
	write(line_var, integer'image(y));
	writeline(text_var, line_var);   -- write line_var into the file
	file_close(text_var);
	state <= s1;
end case;