.class public Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;
.super Lcom/platform/usercenter/common/lib/utils/WeakHandler;
.source "WeakHandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/common/helper/WeakHandlerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticWeakHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/platform/usercenter/common/lib/utils/WeakHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private handler:Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p3}, Lcom/platform/usercenter/common/lib/utils/WeakHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    .line 27
    iput-object p2, p0, Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;->handler:Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;

    return-void
.end method

.method public constructor <init>(Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p2}, Lcom/platform/usercenter/common/lib/utils/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object p1, p0, Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;->handler:Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "TT;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/platform/usercenter/common/helper/WeakHandlerHelper$StaticWeakHandler;->handler:Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/platform/usercenter/common/helper/WeakHandlerHelper$IHandler;->handleMessage(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
