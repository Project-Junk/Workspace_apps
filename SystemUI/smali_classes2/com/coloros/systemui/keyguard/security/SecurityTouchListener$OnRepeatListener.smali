.class public interface abstract Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;
.super Ljava/lang/Object;
.source "SecurityTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRepeatListener"
.end annotation


# virtual methods
.method public consumeTouchEvent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needRepeat()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract onRepeated()V
.end method

.method public onTouchDown()V
    .locals 0

    return-void
.end method
