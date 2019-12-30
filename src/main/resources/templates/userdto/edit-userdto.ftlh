<#import "/spring.ftl" as spring/>
<html>
<head>
    <title>Edit User</title>
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
        <h1>Edit User</h1>
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
        <div class="panel-heading"><a href="#edit-resource-panel" data-toggle="collapse">Edit</a></div>
        <div id="edit-resource-panel" class="panel-body collapse in">
            <form action="/view/userdto/${userdto.id}/edit" method="POST" id="userdto" name="userdto">
                <div class="form-group">
                    <label for="id">ID</label>
                    <@spring.bind "userdto.id"/>
                    <input type="text" class="form-control" id="id" name="id" value="${userdto.id!""}" readonly/>
                    <#list spring.status.errorMessages as error>
                        <span class="errorMessage">${error}</span>
                    </#list>
                </div>

                <div class="form-group">
                    <label for="firstName">FirstName</label>
                    <@spring.bind "userdto.firstName"/>
                    <input type="text" class="form-control" id="firstName" name="firstName" value="${userdto.firstName!""}"/>
                    <#list spring.status.errorMessages as error>
                        <span class="errorMessage">${error}</span>
                    </#list>
                </div>

                <div class="form-group">
                    <label for="lastName">LastName</label>
                    <@spring.bind "userdto.lastName"/>
                    <input type="text" class="form-control" id="lastName" name="lastName" value="${userdto.lastName!""}"/>
                    <#list spring.status.errorMessages as error>
                        <span class="errorMessage">${error}</span>
                    </#list>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <@spring.bind "userdto.email"/>
                    <input type="text" class="form-control" id="email" name="email" value="${userdto.email!""}"/>
                    <#list spring.status.errorMessages as error>
                        <span class="errorMessage">${error}</span>
                    </#list>
                </div>

                <div class="col-12 controls">
                    <span>
                        <button type="submit" id="btn-submit" class="btn btn-success btn-md">Submit</button>
                        <button type="button" id="btn" class="btn btn-danger btn-md" onclick="window.history.back();">Cancel</button>
                    </span>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
