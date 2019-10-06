<div class="head-bread">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="login.php">LOGIN</a></li>
                    <li class="active">REGISTER</li>
                </ol>
            </div>
        </div>
        <!-- reg-form -->
	<div class="reg-form">
		<div class="container">
			<div class="reg">
				<h3>Register Now</h3>
				<p>Welcome, please enter the following details to continue.</p>
				<p>If you have previously registered with us,<a href="login.php">click here</a></p>
				 <form method="post" action="signup.php">
					<ul>
						<?php include("modules/errors.php");?>
						<li class="text-info">Your Name: </li>
						<li><input type="text" name="username" value="<?php echo $username; ?>"placeholder="First and last name" required="" tabindex="1"></li>
					 </ul>				 
					<ul>
						<li class="text-info">Email: </li>
						<li><input type="text" name="email" value="<?php echo $email; ?>" placeholder="example@domain.com" required=""></li>
					</ul>
					<ul>
						<li class="text-info">Password: </li>
						<li><input type="password" name="pass_1" required=""></li>
					</ul>
					<ul>
						<li class="text-info">Re-enter Password:</li>
						<li><input type="password" name="pass_2" required=""> </li>
					</ul>
					<fieldset>
		                <label>Birthday</label>
		                 	<label class="month"> 
		                 	<select class="select-style" name="BirthMonth">
		                 	<option value="">Month</option>
		                 	<option  value="01">January</option>
		                 	<option value="02">February</option>
		                 	<option value="03" >March</option>
		                 	<option value="04">April</option>
		                	<option value="05">May</option>
		                 	<option value="06">June</option>
		                 	<option value="07">July</option>
		                  	<option value="08">August</option>
		                  	<option value="09">September</option>
		                  	<option value="10">October</option>
		                  	<option value="11">November</option>
		                  	<option value="12" >December</option>
		                </label>
                 			</select>    
                		<label>Day<input type="birthday" maxlength="2" name="BirthDay"  placeholder="Day" required=""></label>
                		<label>Year <input type="birthyear" maxlength="4" name="BirthYear" placeholder="Year" required=""></label>
              		</fieldset>
					<ul>
						<li class="text-info">Mobile Number:</li>
						<li><input type="text" name="phone" value="<?php echo $phone;?>"></li>
					</ul>
					<ul>
						<li class="text-info">Address: </li>
						<li><input type="text" name="address" value="<?php echo $address;?>"></li>
					</ul>
					<button type="submit" name ="register" class="btn">Register</button>
				</form>
			</div>
		</div>
	</div>