.class public interface abstract Lcom/nearme/romupdate/ISwitchControl;
.super Ljava/lang/Object;
.source "ISwitchControl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/romupdate/ISwitchControl$Stub;
    }
.end annotation


# virtual methods
.method public abstract isDebug(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isEnableBuglyLog(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
