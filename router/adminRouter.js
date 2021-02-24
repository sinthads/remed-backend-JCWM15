const query = require("../database");

const router = require("express").Router();

router.get("/get/report", async (req, res) => {
  try {
    const response = await query(`select
        s.id,
        s.name,
        s.hp,
        count(c.name) as total_client,
        c.credit as total_credit
        from sales s
        join clients c on c.id_sales = s.id
        group by s.id
        ;`);
    return res.status(200).send(response);
  } catch (err) {
    res.status(500).send(err);
  }
});

module.exports = router;
