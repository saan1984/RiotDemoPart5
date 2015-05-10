<student-table>
    <h1>Student Table</h1>
    <table border="1">
        <thead>
            <tr>
                <th each={opts.headers}>
                    {columnName}
                </th>
            </tr>
        </thead>
        <tbody>
            <tr each={studentList}>
                <td>{user.name.first}</td>
                <td>{user.email}</td>
                <td>{user.nationality}</td>
                <td>{user.cell}</td>
            </tr>
        </tbody>
    </table>
    var self = this
    this.studentList = [];
    opts.dataRequest.done(function(data){
        self.studentList = data.results;
        self.update(this.studentList)
    })

    this.on('mount', function() {
        console.log("Custom tag is mounted")
    })

    this.on('update', function() {
        console.log("Custom tag is updated")
    })

    this.on('unmount', function() {
        console.log("Custom tag is un-mounted")
    })
</student-table>