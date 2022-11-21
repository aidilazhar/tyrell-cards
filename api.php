<?php
header("Content-Type:application/json");

$conn = new mysqli('localhost', 'root', '@Empatbelas14','tyrell');

$total_player = $_POST['total_player'];
$result = mysqli_query($conn,"SELECT card_name FROM cards");
$cards = array();
$players = array();

while ($row = mysqli_fetch_assoc($result)) {
foreach ($row as $value) { 
    array_push($cards,$value);
  }
}

shuffle($cards);

if($total_player > 0 && $total_player < 53){
  $i = 0;
  $x = 0;
  $p = 1;
  for ($x = 0; $x < 52; $x++) { 

    if($p < $total_player) {
      $players[$p]['cards'][] = $cards[$x];

      if($total_player > 0){ $p++; }
     
    } else {
      $players[$p]['cards'][] = $cards[$x];
      $p = 1;
    }
  }

  for ($m = 1; $m <= $total_player; $m++) { 
  $fplayers[$m] = $players[$m];
  }

	$response_code = 200;
	$response_desc = 'SUCCESS';

	response($response_code,$response_desc,$fplayers);
	mysqli_close($conn);
	
   
} else {
	  response(400,"Invalid Value, Please enter numerical value in range 1 - 52",NULL);
	}

function response($response_code,$response_desc,$fplayers){
	  
	      $response['response_code'] = $response_code;
	      $response['response_desc'] = $response_desc;
        $response['players'] = $fplayers;
	
	$json_response = json_encode($response);

	echo $json_response;
}


?>