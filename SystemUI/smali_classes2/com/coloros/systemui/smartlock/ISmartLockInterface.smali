.class public interface abstract Lcom/coloros/systemui/smartlock/ISmartLockInterface;
.super Ljava/lang/Object;
.source "ISmartLockInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;,
        Lcom/coloros/systemui/smartlock/ISmartLockInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getSmartLockMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSmartLockActiveMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySmartLock(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract register(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregister(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
