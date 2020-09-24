.class public interface abstract Lcom/coloros/notification/INotificationInterface;
.super Ljava/lang/Object;
.source "INotificationInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/notification/INotificationInterface$Stub;,
        Lcom/coloros/notification/INotificationInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract sbnIsFold(Landroid/service/notification/StatusBarNotification;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract shouldShowHeadsup(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract shouldShowOnKeyguard(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
