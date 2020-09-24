.class public interface abstract Lcom/heytap/openid/IOpenID;
.super Ljava/lang/Object;
.source "IOpenID.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/openid/IOpenID$Stub;
    }
.end annotation


# virtual methods
.method public abstract getOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
