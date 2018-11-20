<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Data Kendaraan Motor</title>
  </head>
  <body>
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
            <select name="merk">
              <option value="Toyota">Toyota</option>
              <option value="Honda">Honda</option>
              <option value="Suzuki">Suzuki</option>
              <option value="Mitsubishi">Mitsubishi</option>
            </select>
        </td>
      </tr>
      <tr>
        <td>Jenis Kendaraan</td>
        <td>:</td>
        <td>
            <input type="radio" name="jenis_kendaraan" value="Sedan">Sedan<br>
            <input type="radio" name="jenis_kendaraan" value="MPV">MPV<br>
            <input type="radio" name="jenis_kendaraan" value="SUV">SUV <br>
            <input type="radio" name="jenis_kendaraan" value="Hatchback">Hatchback
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
        <td><input type="number" name="harga"> </td>
      </tr>
      <tr>
        <td><input type="submit" value="Kirim"></td>
      </tr>
    </table>
  </body>
</html>
