.class public interface abstract Lcom/coloros/systemui/volume/Events$Callback;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract writeEvent(JI[Ljava/lang/Object;)V
.end method

.method public abstract writeState(JLcom/android/systemui/plugins/ColorVolumeDialogController$State;)V
.end method
