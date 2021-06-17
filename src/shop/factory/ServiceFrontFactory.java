package shop.factory;

import shop.service.front.IGoodsServiceFront;
import shop.service.front.IMemberServiceFront;
import shop.service.front.IOrdersServiceFront;
import shop.service.front.IShopcarServiceFront;
import shop.service.front.impl.GoodsServiceFrontImpl;
import shop.service.front.impl.MemberServiceFrontImpl;
import shop.service.front.impl.OrdersServiceFrontImpl;
import shop.service.front.impl.ShopcarServiceFrontImpl;

/**
 * 工厂模式（Factory Pattern）是 Java 中最常用的设计模式之一。
 * 这种类型的设计模式属于创建型模式，它提供了一种创建对象的最佳方式。
 * 在工厂模式中，我们在创建对象时不会对客户端暴露创建逻辑，并且是通过使用一个共同的接口来指向新创建的对象。
 */
public class ServiceFrontFactory {
    public static IMemberServiceFront getIMemberServiceFrontInstance() {
        return new MemberServiceFrontImpl();
    }

    public static IGoodsServiceFront getIGoodsServiceFrontInstance() {
        return new GoodsServiceFrontImpl();
    }

    public static IShopcarServiceFront getIShopcarServiceFrontInstance() {
        return new ShopcarServiceFrontImpl() ;
    }

    public static IOrdersServiceFront getIOrdersServiceFrontInstance() {
        return new OrdersServiceFrontImpl() ;
    }
}
