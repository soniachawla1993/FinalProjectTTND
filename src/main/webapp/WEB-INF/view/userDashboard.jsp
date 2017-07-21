<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 7/20/2017
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resource/css/font-awesome.min.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <script src="<c:url value="/resource/css/script.js" />"></script>

</head>

<body>
<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar-collapse" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Link Sharing</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="navbar-right">
                <div class="collapse navbar-collapse" id="bs-navbar-collapse">
                    <form class="navbar-form navbar-left">
                        <div class="input-group">
                            <span class="input-group-addon search"><i class="glyphicon glyphicon-search"></i></span>
                            <input type="text" class="form-control searchbox" placeholder="Username" aria-describedby="basic-addon1">
                        </div>
                    </form>
                    <ul class="nav navbar-nav navbar-left">
                        <li class="menuicons"><a href="#" class="icon showCreateTopicModal"><i class="fa fa-comment" aria-hidden="true"></i></a></li>
                        <li class="menuicons"><a href="#" class="icon showInviteModal new"><i class="fa fa-envelope-o" aria-hidden="true"></i></a></li>
                        <li class="menuicons"><a href="#" class="icon showLinkModal"><i class="fa fa-link" aria-hidden="true"></i></a></li>
                        <li class="menuicons"><a href="#" class="icon showDocumentModal"><i class="fa fa-pencil-square-o toggleEdit" aria-hidden="true"></i></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle user" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle-o usericon" aria-hidden="true"></i> Name Here<span class="caret"></span></a>
                            <ul class="dropdown-menu usermenu">
                                <li><a href="#">Profile</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Users</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Topics</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Posts</a></li>
                                <li role="separator" class="divider"></li>
                                <li>
                            <form method="post" action="/home/loggingout">
                                <button type="submit">Logout</button>
                            </form>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<div class="row">
    <div class="col-sm-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Recent Shares</h3>
            </div>
            <div class="panel-body">
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/90x90" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Name Goes Here</h4>
                        <p class="username">@username_goes_here</p>
                        <div class="col-sm-4 col-xs-4 subscriptions_topics">Subscriptions
                            <div class="subscriptions_topics">30</div>
                        </div>
                        <div class="col-sm-4 col-xs-4 subscriptions_topics">Topics
                            <div class="subscriptions_topics">30</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Subscriptions  -->
        <div class="panel panel-default subscriptions_sec">
            <div class="panel-heading">
                <div class="panel-title">Subscriptions</div>
                <span class="panel-title float-right"><a href="#">view all</a></span>
            </div>
            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/60x60" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                            <span class="editTopic hide">
                                <div class="form-group inline-input col-sm-6">
                                    <input type="text" class="form-control topic" id="topic">
                                </div>
                                <button class="btn btn-default">Save</button>
                                <button class="btn btn-default cancelEditTopic">Cancel</button>
                            </span>
                        <a href="#" class="media-heading topicName">Name2 Goes Here</a>
                        <span>
                                <p class="username float-left">@username</p>
                                <div class="col-sm-4 col-xs-4 subscriptions_topics">Subscriptions
                                    <div class="subscriptions_topics">30</div>
                                </div>
                                <div class="col-sm-4 col-xs-4 subscriptions_topics">Topics
                                    <div class="subscriptions_topics">30</div>
                                </div>
                            </span>
                    </div>
                    <div class="subs_options clear-both">
                            <span class="col-sm-4 option">
                                <select name="" id="">
                                    <option value="">Serious</option>
                                    <option value="">Value 1</option>
                                    <option value="">Value 2</option>
                                </select>
                            </span>
                        <span class="col-sm-4 option">
                                <select name="" id="">
                                    <option value="">Delete</option>
                                    <option value="">Edit</option>
                                    <option value="">Private</option>
                                </select>
                            </span>
                        <span class="col-sm-4 option">
                                <a href="#" class="showInviteModal"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa toggleEdit" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </span>
                    </div>
                </div>
                <!-- POST  -->
                <hr/>
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/60x60" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                            <span class="editTopic hide">
                                <div class="form-group inline-input col-sm-6">
                                    <input type="text" class="form-control topic" id="topic">
                                </div>
                                <button class="btn btn-default">Save</button>
                                <button class="btn btn-default cancelEditTopic">Cancel</button>
                            </span>
                        <a href="#" class="media-heading topicName">Name3 Goes Here</a>
                        <span>
                                <p class="username float-left">@username</p>
                                <div class="col-sm-4 col-xs-4 subscriptions_topics">Subscriptions
                                    <div class="subscriptions_topics">30</div>
                                </div>
                                <div class="col-sm-4 col-xs-4 subscriptions_topics">Topics
                                    <div class="subscriptions_topics">30</div>
                                </div>
                            </span>
                    </div>
                    <div class="subs_options clear-both">
                            <span class="col-sm-4 option">
                                <select name="" id="">
                                    <option value="">Serious</option>
                                    <option value="">Value 1</option>
                                    <option value="">Value 2</option>
                                </select>
                            </span>
                        <span class="col-sm-4 option">
                                <select name="" id="">
                                    <option value="">Delete</option>
                                    <option value="">Edit</option>
                                    <option value="">Private</option>
                                </select>
                            </span>
                        <span class="col-sm-4 option">
                                <a href="#" class="showInviteModal"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-pencil-square-o toggleEdit" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Trending  -->
        <div class="panel panel-default trending_sec">
            <div class="panel-heading">
                <div class="panel-title">Trending Topics</div>
                <span class="panel-title float-right"><a href="#">view all</a></span>
            </div>
            <div class="panel-body">
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/60x60" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                            <span class="editTopic hide">
                                <div class="form-group inline-input col-sm-6">
                                    <input type="text" class="form-control topic" id="topic">
                                </div>
                                <button class="btn btn-default">Save</button>
                                <button class="btn btn-default cancelEditTopic">Cancel</button>
                            </span>
                        <a href="#" class="media-heading topicName">Name4 Goes Here</a>
                        <br>
                        <span>
                                <p class="username float-left">@username</p>
                                <div class="col-sm-4 col-xs-4 subscriptions_topics">Subscriptions
                                    <div class="subscriptions_topics">30</div>
                                </div>
                                <div class="col-sm-4 col-xs-4 subscriptions_topics">Topics
                                    <div class="subscriptions_topics">30</div>
                                </div>
                            </span>
                    </div>
                    <div class="subs_options clear-both">
                            <span class="col-sm-4 option">
                                <select name="" id="">
                                    <option value="">Serious</option>
                                    <option value="">Value 1</option>
                                    <option value="">Value 2</option>
                                </select>
                            </span>
                        <span class="col-sm-4 option">
                                <select name="" id="">
                                    <option value="">Delete</option>
                                    <option value="">Edit</option>
                                    <option value="">Private</option>
                                </select>
                            </span>
                        <span class="col-sm-4 option">
                                <a href="#" class="showInviteModal"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-pencil-square-o toggleEdit" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </span>
                    </div>
                </div>
                <!-- POST  -->
                <hr/>
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/60x60" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                            <span class="editTopic hide">
                                <div class="form-group inline-input col-sm-6">
                                    <input type="text" class="form-control topic" id="topic">
                                </div>
                                <button class="btn btn-default">Save</button>
                                <button class="btn btn-default cancelEditTopic">Cancel</button>
                            </span>
                        <a href="#" class="media-heading topicName">Name5 Goes Here</a>
                        <br>
                        <span>
                                <p class="username float-left">@username</p>
                                <div class="col-sm-4 col-xs-4 subscriptions_topics">Subscriptions
                                    <div class="subscriptions_topics">30</div>
                                </div>
                                <div class="col-sm-4 col-xs-4 subscriptions_topics">Topics
                                    <div class="subscriptions_topics">30</div>
                                </div>
                            </span>
                    </div>
                    <div class="subs_options clear-both">
                            <span class="col-sm-4 option">
                                <select name="" id="">
                                    <option value="">Serious</option>
                                    <option value="">Value 1</option>
                                    <option value="">Value 2</option>
                                </select>
                            </span>
                        <span class="col-sm-4 option">
                                <select name="" id="">
                                    <option value="">Delete</option>
                                    <option value="">Edit</option>
                                    <option value="">Private</option>
                                </select>
                            </span>
                        <span class="col-sm-4 option">
                                <a href="#" class="showInviteModal"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
                                <a href=""><i class="fa fa-pencil-square-o toggleEdit" aria-hidden="true"></i></a>
                                <a href=""><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Inbox</h3>
            </div>
            <div class="panel-body">
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/90x90" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Name Goes Here <span class="subheader">Today, 1 hour ago</span></h4>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed ex eu tortor congue pretium vitae commodo massa. In posuere
                        nisl enim, ut accumsan quam commodo eu. Pellentesque egestas dapibus felis sit amet pharetra.<br/>
                        <div><a href="#"><i class="fa fa-facebook-square"></i></a> <a href="#"><i class="fa fa-twitter-square"></i></a>                                <a href="#"><i class="fa fa-google-plus-square"></i></a> <a href="#" class="a-right">View post</a></div>
                    </div>
                </div>
                <hr/>
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/90x90" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Name Goes Here <span class="subheader">Today, 1 hour ago</span></h4>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed ex eu tortor congue pretium vitae commodo massa. In posuere
                        nisl enim, ut accumsan quam commodo eu. Pellentesque egestas dapibus felis sit amet pharetra.<br/>
                        <div><a href="#"><i class="fa fa-facebook-square"></i></a> <a href="#"><i class="fa fa-twitter-square"></i></a>                                <a href="#"><i class="fa fa-google-plus-square"></i></a> <a href="#" class="a-right">View post</a></div>
                    </div>
                </div>
            </div>
        </div>


    </div>

</div>
<!-- Modal -->

<div class="modal fade" id="sendNewInvite" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Send Invitation</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Email:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="topics" class="col-sm-2 control-label">Topic:</label>
                        <div class="col-sm-10">
                            <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
                            <select name="topics" class="form-control" id="topicsss">
                                <option value="topic1">Topic 1</option>
                                <option value="topic2">Topic 2</option>
                                <option value="topic3">Topic 3</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default">Invite</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="sendInvite" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Send Invitation</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="topic" class="col-sm-2 control-label">Topic</label>
                        <div class="col-sm-10">
                            <input type="text" value="" class="form-control modal-topicName" placeholder="" readonly>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default">Invite</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="shareLink" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Share Link</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Link</label>
                        <div class="col-sm-10">
                            <input type="url" class="form-control" placeholder="Link">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Description</label>
                        <div class="col-sm-10">
                            <textarea class="form-control vresize" placeholder="Description"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="topics" class="col-sm-2 control-label">Topic:</label>
                        <div class="col-sm-10">
                            <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
                            <select name="topics" class="form-control" id="topics">
                                <option value="topic1">Topic 1</option>
                                <option value="topic2">Topic 2</option>
                                <option value="topic3">Topic 3</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default">Share</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>




<div class="modal fade" id="shareDocument" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Share Document</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" method="post" action="/share/sharelink">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Link</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" placeholder="Link" name="link">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Description</label>
                        <div class="col-sm-10">
                            <textarea class="form-control vresize" placeholder="Description" name="description"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="topics" class="col-sm-2 control-label">Topic:</label>
                        <div class="col-sm-10">
                            <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
                            <select name="topics" class="form-control" id="top">
                                <option value="topic1">Topic 1</option>
                                <option value="topic2">Topic 2</option>
                                <option value="topic3">Topic 3</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default">Share</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>





<div class="modal fade" id="createTopic" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>

                <h4 class="modal-title">Create Topic</h4>
            </div>
            <div class="modal-body">
                <form method="post" action="/topic/create" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="name" placeholder="Topic Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="topics" class="col-sm-2 control-label">Visibility:</label>
                        <div class="col-sm-10">
                            <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
                            <select name="visibility" class="form-control" id="topicss">
                                <option name="public" value="PUBLIC">Public</option>
                                <option name="private" value="PRIVATE">Private</option>
                            </select>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-default">Save</button>
                    <button type="reset" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </form>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
</body>

</html>