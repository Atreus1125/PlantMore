package shop.service.back.impl;

import shop.dbc.DatabaseConnection;
import shop.factory.DAOFactory;
import shop.service.back.IOrdersServiceBack;
import shop.vo.Orders;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by mldn on 2015/10/16.
 */
public class OrdersServiceBackImpl implements IOrdersServiceBack {
    private DatabaseConnection dbc = new DatabaseConnection();

    @Override
    public Map<String, Object> list(int currentPage, int lineSize, String column, String keyWord) throws Exception {
        try {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("allOrders", DAOFactory.getIOrdersDAOInstance(this.dbc.getConnection()).findAllSplit(currentPage, lineSize, column, keyWord));
            map.put("ordersCount", DAOFactory.getIOrdersDAOInstance(this.dbc.getConnection()).getAllCount(column, keyWord));
            return map;
        } catch (Exception e) {
            throw e;
        } finally {
            this.dbc.close();
        }
    }

    @Override
    public Orders show(int oid) throws Exception {
        try {
            Orders vo = DAOFactory.getIOrdersDAOInstance(this.dbc.getConnection()).findById(oid);
            if (vo != null) {
                vo.setAllDetails(DAOFactory.getIDetailsDAOInstance(this.dbc.getConnection()).findAllByOrders(oid));
            }
            return vo;
        } catch (Exception e) {
            throw e;
        } finally {
            this.dbc.close();
        }
    }
}
