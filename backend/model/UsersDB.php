<?php 
require_once 'Database.php';

class UsersDB {
    private $db;
    private $tablename;
    private $tableid;

    public function __construct() {
        $this->db = new Database();
        $this->tablename= 'users';
        $this->tableid= 'users_id';
    }

    public function create($first_name, $last_name, $phone, $location, $email, $password, $role, $photo) {
        $sql= "insert into $this->tablename set first_name=?, last_name=?, phone=?, location=?, email=?, password=?, role=?, photo=?";
        $params= array ($first_name, $last_name, $phone, $location, $email, $password, $role, $photo );
        $this->db->prepare($sql, $params);
    }
      public function update($id, $first_name, $last_name, $phone, $location, $email, $password, $role, $photo) {
        $sql= "update $this->tablename set first_name=?, last_name=?, phone=?, location=?, email=?, password=?, role=?, photo=?, where $this->tableid=?"
        $params= array ($first_name, $last_name, $phone, $location, $email, $password, $role, $photo , $id);
        $this->db->prepare($sql, $params);
}

public funtion delete ($id) {
    $sql= "delete from $this->tablename where $this->tableid=?"
    $params= array ($id);
    $this->db->prepare($sql, $params);
}

public funtion read ($id){
    $sql= "select * from $this->tablename where $this->tableid=?";
    $params= array($id);
    $req= $this->db->prepare($sql, $params);
    return $this->db->getDatas($req, true);
}

public funtion readAll() {
    $sql= "select * from $this->tablename order by $this->tableid desc";
    $params= array ($id);
    $this->db->prepare($sql, $params);

}

public function
}
?>