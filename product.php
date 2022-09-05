<!DOCTYPE html>
<html>
    <head>
        <h1>Color equipment Product</h1>
    </head>
    <body>
        
        <?php
           $tongproduct = [
            [
            "id" => 01, "name"=> "แปรงทาสี", "price"=> 110,
            "img"=> "https://totaltoolsstation.com/wp-content/uploads/2020/03/THT84022.jpg"
            ],
           [
            "id"=> 02, "name"=> "อะไหล่ด้ามลูกกลิ้งทาสี", "price"=> 79,
            "img"=> "https://www.linconshome.co.th/wp-content/uploads/2021/05/1a749681d268d7a730effac748a0cc92.jpg"
           ],
           [
            "id"=> 03, "name"=> "พู่กันตัวตัด SA-NGAA", "price"=> 159,
            "img"=> "https://s3gw.inet.co.th:8082/smegp-image-3/smegp_images/60/SMEGP-2021-12-08-23-31-20-PRODUCT-001.jpg"
           ],
           [
            "id"=> 04, "name"=> "อะไหล่ลูกกลิ้งทาสี WOKIN WK0287", "price"=> 40,
            "img"=> "https://www.manekionline.com/wp-content/uploads/2021/08/2512201110130.jpg"
           ],
           [
            "id"=> 05, "name"=> "แปรงทาสีขนาดเล็ก WOKIN WK0283", "price"=> 65,
            "img"=> "data:image/jpeg;base64,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"
           ],
           [
            "id"=> 06, "name"=> "แปรงทาสี KOSSHI ขนาด 3 นิ้ว", "price"=> 150,
            "img"=> "https://www.hardwarehouse.co.th/media/catalog/product/cache/1/image/400x400/9df78eab33525d08d6e5fb8d27136e95/1/1/1102254_1.jpg"
           ],
           [
            "id"=> 07, "name"=> "TOA Fibercement Shield ชนิดกึ่งเงา แบบทึบแสง", "price"=> 990,
            "img"=> "https://toashop.online/wp-content/uploads/2019/06/toa-fibercement-shield-semi-gloss.jpg"
           ],
           [
            "id"=> 11, "name"=> "TOA Decking Stain ชนิดด้าน สำหรับภายนอก", "price"=> 2700,
            "img"=> "https://toashop.online/wp-content/uploads/2019/06/toa-woodstain-decking.jpg"
           ],
           [
            "id"=> 12, "name"=> "TOA 7IN1 สูตรน้ำมัน สีรองพื้นปูนเก่า", "price"=> 3000,
            "img"=> "https://toashop.online/wp-content/uploads/2019/06/TOA-7IN1-Future-Color-Supersealer-%E0%B8%AA%E0%B8%B5%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B8%9E%E0%B8%B7%E0%B9%89%E0%B8%99%E0%B8%9B%E0%B8%B9%E0%B8%99%E0%B9%80%E0%B8%81%E0%B9%88%E0%B8%B2-%E0%B8%AA%E0%B8%B9%E0%B8%95%E0%B8%A3%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B8%A1%E0%B8%B1%E0%B8%99.jpg"
           ],
           [
            "id"=> 10, "name"=> "TOA Quick Primer ควิก ไพรเมอร์", "price"=> 3500,
            "img"=> "https://toashop.online/wp-content/uploads/2019/06/quick-primer.jpg"
           ],
        ];
        ?>

        <table width=1000, border=2><tr align=center bgcolor=#CCFFFF>
                <th>id</th>
                <th>name</th>
                <th>price</th>
                <th>img</th>
                </tr>

        <?php foreach($tongproduct as $value){
             $r = rand(0,256);
             $g = rand(0,256);
             $b = rand(0,256);
             $Style = " style='color:rgb($r,$g,$b)' ";
            ?>
            <tr align=center bgcolor=#CCFFFF>  
                <td <?=$Style?>><?=$value['id']?></td>
                <td <?=$Style?>><?=$value['name']?></td>
                <td <?=$Style?>><?=$value['price']?></td>
                <td <?=$Style?>><img width=400 height=300 src = <?=$value['img']?> ></td>
                </tr>
        <?php } ?>

        
    </body>
    
</html> 