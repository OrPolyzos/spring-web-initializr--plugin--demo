<#import "/spring.ftl" as spring/>
<html>
<head>
    <title>Users</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/swip-styles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="page-header">
        <h1>Users</h1>
    </div>
    <#if infoMessage??>
        <div class="panel panel-default">
            <div class="panel-body infoMessage">${infoMessage}</div>
        </div>
    </#if>
    <#if errorMessage??>
        <div class="panel panel-default">
            <div class="panel-body errorMessage">${errorMessage}</div>
        </div>
    </#if>
    <div class="panel panel-default">
        <div class="panel-heading"><a href="#create-resource-panel" data-toggle="collapse">Create</a></div>
        <div id="create-resource-panel" class="panel-body collapse">
            <form action="/view/user" method="POST" id="user" name="user">

                <div class="form-group">
                    <label for="firstName">FirstName</label>
                    <@spring.bind "user.firstName"/>
                    <input type="text" class="form-control" id="firstName" name="firstName" value="${user.firstName!""}"/>
                    <#list spring.status.errorMessages as error>
                        <span class="errorMessage">${error}</span>
                    </#list>
                </div>

                <div class="form-group">
                    <label for="lastName">LastName</label>
                    <@spring.bind "user.lastName"/>
                    <input type="text" class="form-control" id="lastName" name="lastName" value="${user.lastName!""}"/>
                    <#list spring.status.errorMessages as error>
                        <span class="errorMessage">${error}</span>
                    </#list>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <@spring.bind "user.email"/>
                    <input type="text" class="form-control" id="email" name="email" value="${user.email!""}"/>
                    <#list spring.status.errorMessages as error>
                        <span class="errorMessage">${error}</span>
                    </#list>
                </div>

                <div class="col-12 controls">
                    <span>
                        <button type="submit" id="btn-submit" class="btn btn-success btn-md">Submit</button>
                        <button type="reset" id="btn-clear" class="btn btn-danger btn-md">Clear</button>
                    </span>
                </div>
            </form>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading"><a href="#search-resource-panel" data-toggle="collapse">Search</a></div>
        <div id="search-resource-panel" class="panel-body collapse">
            <form action="/view/user/search" method="POST" id="userSearch" name="userSearch">
                <div class="attention">Specific search fields should be added here</div>
                <div class="col-12 controls">
                    <span>
                        <button type="submit" id="btn-submit" class="btn btn-primary">Search</button>
                        <button type="reset" id="btn-clear" class="btn btn-danger">Clear</button>
                    </span>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="container-fluid">
    <#if userList?has_content>
        <div class="panel panel-default">
            <div class="panel-heading"><a href="#results-resource-panel" data-toggle="collapse">Results</a></div>
            <div id="results-resource-panel" class="panel-body collapse in">
                <div class="table-responsive">
                    <table id="resource-table" class="table table-hover table-striped">
                        <thead>
                        <tr>
                            <th>ID</th>

                            <th>FirstName</th>

                            <th>LastName</th>

                            <th>Email</th>

                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list userList as resource>
                            <tr>
                                <td>${resource.rpId!""}</td>

                                <td>${resource.firstName!""}</td>

                                <td>${resource.lastName!""}</td>

                                <td>${resource.email!""}</td>

                                <td>
                                    <form action="/view/user/${resource.rpId}/edit" method="GET">
                                        <button type="submit" class="btn btn-success">
                                            <span class="glyphicon glyphicon-cog"></span>
                                        </button>
                                    </form>
                                </td>
                                <td>
                                    <form action="/view/user/${resource.rpId}/delete" method="POST">
                                        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')">
                                            <span class="glyphicon glyphicon-remove"></span>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </#if>
</div>
</body>
</html>
