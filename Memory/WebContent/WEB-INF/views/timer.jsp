<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <section id="timer">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 countdown-wrapper text-center mb20">
                <div class="card">
                    <div class="card-header">
                        Upcomming Event countdown timer
                    </div>
                    <div class="card-block">
    	                <div id="countdown">
            	            <div class="well">
                        	    <span id="hour" class="timer bg-success"></span>
                        	    <span id="min" class="timer bg-info"></span>
                        	    <span id="sec" class="timer bg-primary"></span>
                        	</div>
                    	</div>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">Book now</a>
                        <a href="#" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">Subscrib for upcomming</a>
                        <a href="#" class="btn btn-danger">14 remaining</a>
                    </div>
                </div>
    	    </div>
			<div class="col-xs-12 col-sm-12 col-md-6 countdown-wrapper text-center mb20">
                <div class="card">
                    <div class="card-header">
                        Upcomming Event countdown timer
                    </div>
                    <div class="card-block">
    	                <div id="countdown">
            	            <div class="well">
                        	    <span id="hour" class="timer bg-success"></span>
                        	    <span id="min" class="timer bg-info"></span>
                        	    <span id="sec" class="timer bg-primary"></span>
                        	</div>
                    	</div>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">Book now</a>
                        <a href="#" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">Subscrib for upcomming</a>
                        <a href="#" class="btn btn-danger">14 remaining</a>
                    </div>
                </div>
    	    </div>
    	</div>
    </section>
</div>
<!-- Subscribe for upcomming event modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Subscribe for our upcomming Events</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email"> 
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> 
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-success">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!-- /Subscribe for upcomming event modal -->