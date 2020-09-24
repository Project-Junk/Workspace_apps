.class public interface abstract Lcom/coloros/airview/IAirViewProxy;
.super Ljava/lang/Object;
.source "IAirViewProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/airview/IAirViewProxy$Stub;,
        Lcom/coloros/airview/IAirViewProxy$Default;
    }
.end annotation


# virtual methods
.method public abstract cancel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract display(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
