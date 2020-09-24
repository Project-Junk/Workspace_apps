.class public interface abstract Lcom/coloros/systemui/smartlock/ISmartLockCallback;
.super Ljava/lang/Object;
.source "ISmartLockCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/smartlock/ISmartLockCallback$Stub;,
        Lcom/coloros/systemui/smartlock/ISmartLockCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract process(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
