const query = require("../database");

const router = require("express").Router();

router.get("/get/client/:id_sales", async (req, res) => {
  const { id_sales } = req.params;
  console.log(id_sales);
  try {
    const response = await query(
      `SELECT * FROM clients WHERE id_sales = ${id_sales};`
    );
    res.status(200).send(response);
  } catch (err) {
    res.status(500).send(err);
  }
});

router.post("/add/client", async (req, res) => {
  const { name, address, hp, zip_code, credit, id_sales } = req.body;
  try {
    const regClient = await query(
      `INSERT INTO clients (name, hp, address, zip_code, credit, id_sales) VALUES ('${name}', '${hp}', '${address}', ${zip_code}, ${credit}, ${id_sales})`
    );
    const response = await query(
      `SELECT * FROM clients WHERE id = ${regClient.insertId}`
    );
    res.status(200).send(response);
  } catch (err) {
    res.status(500).send(err);
  }
});

router.delete("/delete/client/:id_client", async (req, res) => {
  try {
    await query(`delete from clients where id = ${req.params.id_client};`);
    res.status(200).send({
      status: 200,
      message: `Client with id ${req.params.id_client} has been deleted`,
    });
  } catch (err) {
    res.status(500).send(err);
  }
});

router.patch("/edit/client/:id_client", async (req, res) => {
  const { id_client } = req.params;
  const { name, address, hp, zip_code, credit, id_sales } = req.body;
  try {
    await query(
      `UPDATE clients SET name = '${name}', address = '${address}', hp = '${hp}', zip_code = ${zip_code}, credit = ${credit}, id_sales = ${id_sales} WHERE id = ${id_client}`
    );
    res.status(200).send({
      status: "200",
      message: `Client with id ${id_client} has been updated.`,
    });
  } catch (err) {
    res.status(500).send(err);
  }
});

module.exports = router;
