--[[
file=io.open("test.txt","a")
while(true) do
	e=io.read()
	if e=="exit" then
		break;
	end
	io.output(file)
	io.write(e)
end
io.close(file)

re=io.open("test.txt","r")
io.input(re)
n=io.read()
while(n) do
	print(n)
	n=io.read()
end
re:close()


--]]
--------------------------д�� ��a+��  ��Ϊw+ ��Ϊÿ��д�붼����д��
file=io.open("test.txt","a+")
while(true) do
	e=io.read()
	if e=="exit" then
		break
	elseif e=="\n" then
		file:write("\\n")
	else
		file:write(e)
	end
--	io.output(file)
--	io.write(e)
end
--io.close(file)
file:close()

-------------------------��ȡ
re=io.open("test.txt","r")
--io.input(re)
--n=io.read()
n=re:read()
while(n) do
	print(n)
   -- re:seek("set")  --���λ��
	--	n=io.read()
	n=re:read()
end



re:close()






