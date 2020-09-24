.class public interface abstract Lcom/oppo/servicesdk/ICommonService;
.super Ljava/lang/Object;
.source "ICommonService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/servicesdk/ICommonService$Stub;
    }
.end annotation


# virtual methods
.method public abstract execute(Lcom/oppo/servicesdk/WeatherRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Lcom/oppo/servicesdk/ICommonCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregister(Lcom/oppo/servicesdk/ICommonCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
