<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Data Kendaraan Motor</title>
  </head>
  <body>
    <form class="" action="proses.php?login=login" method="post">
    <table>
      <tr>
        <td colspan="3"><h1>Data Kendaraan Motor</h1></td>
      </tr>
      <tr>
        <td>ID Kendaraan</td>
        <td>:</td>
        <td><input type="text" name="id_kendaraan"></td>
      </tr>
      <tr>
        <td>Nama Kendaraan</td>
        <td>:</td>
        <td><input type="text" name="nama_kendaraan"></td>
      </tr>
      <tr>
        <td>Merk Kendaraan</td>
        <td>:</td>
        <td>
            <select class="" name="merk">
              <option value="Yamaha">Yamaha</option>
              <option value="Honda">Honda</option>
              <option value="Suzuki">Suzuki</option>
              <option value="Kawasaki">Kawasaki</option>
              <option value="KTM">KTM</option>

            </select>
        </td>
      </tr>
      <tr>
        <td>Jenis Kendaraan</td>
        <td>:</td>
        <td>
            <input type="radio" name="jenis_kendaraan" value="CUB">CUB<br>
            <input type="radio" name="jenis_kendaraan" value="Skuter Matic">Skuter Matic<br>
            <input type="radio" name="jenis_kendaraan" value="Sport">Sport
        </td>
      </tr>
      <tr>
        <td>Plat Nomor</td>
        <td>:</td>
        <td><input type="text" name="nama_kendaraan"></td>
      </tr>
      <tr>
        <td>Harga</td>
        <td>:</td>
        <td><input type="text" name="harga"> </td>
      </tr>
      <tr>
        <td><input type="submit" value="Kirim"></td>
      </tr>
    </table>
    </form>
  </body>
</html>
