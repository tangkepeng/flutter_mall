import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mall/config/application.dart';
import 'package:mall/config/routers.dart';
import 'package:mall/utils/string_util.dart';

class NavigatorUtils {
  static goMallMainPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.home,
        transition: TransitionType.inFromRight, replace: true);
  }

  static goCategoryGoodsListPage(
      BuildContext context, String categoryName, int categoryId) {
    var categoryNameText = StringUtils.encode(categoryName);

    Application.router.navigateTo(
        context,
        Routers.categoryGoodsList +
            "?categoryName=$categoryNameText&categoryId=$categoryId",
        transition: TransitionType.inFromRight);
  }

  static goRegister(BuildContext context) {
    Application.router.navigateTo(context, Routers.register,
        transition: TransitionType.inFromRight);
  }

  static goLogin(BuildContext context) {
    Application.router.navigateTo(context, Routers.login,
        transition: TransitionType.inFromRight);
  }

  static goGoodsDetails(BuildContext context, int goodsId) {
    Application.router.navigateTo(
        context, Routers.goodsDetail + "?goodsId=$goodsId",
        transition: TransitionType.inFromRight);
  }

  static popRegister(BuildContext context) {
    Application.router.pop(context);
  }

  static goFillInOrder(BuildContext context) {
    Application.router.navigateTo(context, Routers.fillInOrder,
        transition: TransitionType.inFromRight);
  }

  static Future goAddress(BuildContext context) {
    return Application.router.navigateTo(context, Routers.address,
        transition: TransitionType.inFromRight);
  }

  static Future goAddressEdit(BuildContext context, int addressId) {
    return Application.router.navigateTo(
        context, Routers.addressEdit + "?addressId=$addressId",
        transition: TransitionType.inFromRight);
  }

  static goFeedback(BuildContext context) {
    Application.router.navigateTo(context, Routers.feedback,
        transition: TransitionType.inFromRight);
  }

  static goCoupon(BuildContext context) {
    Application.router.navigateTo(context, Routers.mineCoupon,
        transition: TransitionType.inFromRight);
  }

  static goFootprint(BuildContext context) {
    Application.router.navigateTo(context, Routers.mineFootprint,
        transition: TransitionType.inFromRight);
  }


  static goCollect(BuildContext context) {
    Application.router.navigateTo(context, Routers.mineCollect,
        transition: TransitionType.inFromRight);
  }

  static goAboutUs(BuildContext context) {
    Application.router.navigateTo(context, Routers.aboutUs,
        transition: TransitionType.inFromRight);
  }
  static submitOrderSuccessPop(BuildContext context){
    Application.router.navigateTo(context, Routers.home,clearStack: true,transition: TransitionType.inFromRight);
  }

  static goOrder(BuildContext context){
    Application.router.navigateTo(context, Routers.mineOrder,transition: TransitionType.inFromRight);
  }

  static goOrderDetail(BuildContext context,int orderId){
    Application.router.navigateTo(context, Routers.mineOrderDetail+"?orderId=$orderId",transition: TransitionType.inFromRight);
  }
}
