.class public interface abstract Lcom/oppo/servicesdk/ICommonCallBack;
.super Ljava/lang/Object;
.source "ICommonCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/servicesdk/ICommonCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyTableDataChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
