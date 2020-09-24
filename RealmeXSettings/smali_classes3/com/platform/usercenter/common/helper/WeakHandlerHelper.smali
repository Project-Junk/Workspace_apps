.class public Lcom/platform/usercenter/common/helper/WeakHandlerHelper;
.super Ljava/lang/Object;
.source "WeakHandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;,
        Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeakHandler(Ljava/lang/Object;Landroid/os/Looper;Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;)Lcom/platform/usercenter/common/lib/utils/WeakHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/os/Looper;",
            "Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler<",
            "TT;>;)",
            "Lcom/platform/usercenter/common/lib/utils/WeakHandler<",
            "TT;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;

    invoke-direct {v0, p1, p2, p0}, Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;-><init>(Landroid/os/Looper;Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getWeakHandler(Ljava/lang/Object;Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;)Lcom/platform/usercenter/common/lib/utils/WeakHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler<",
            "TT;>;)",
            "Lcom/platform/usercenter/common/lib/utils/WeakHandler<",
            "TT;>;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;

    invoke-direct {v0, p1, p0}, Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;-><init>(Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;Ljava/lang/Object;)V

    return-object v0
.end method
