.class public interface abstract Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;
.super Ljava/lang/Object;
.source "EnvelopeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract onKeyguardStatus(Landroid/app/Notification;)V
.end method

.method public abstract onScreenOff(Landroid/app/Notification;)V
.end method

.method public abstract onShowHeadUpView(Landroid/app/Notification;IIZZ)V
.end method
