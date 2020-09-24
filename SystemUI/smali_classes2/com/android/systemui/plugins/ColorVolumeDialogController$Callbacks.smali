.class public interface abstract Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;
.super Ljava/lang/Object;
.source "ColorVolumeDialogController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/ColorVolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract onAccessibilityModeChanged(Ljava/lang/Boolean;)V
.end method

.method public abstract onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onDismissRequested(I)V
.end method

.method public abstract onLayoutDirectionChanged(I)V
.end method

.method public abstract onScreenOff()V
.end method

.method public abstract onShowRequested(I)V
.end method

.method public abstract onShowSafetyWarning(I)V
.end method

.method public abstract onShowSilentHint()V
.end method

.method public abstract onShowVibrateHint()V
.end method

.method public abstract onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V
.end method

.method public abstract onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;I)V
.end method

.method public abstract onThemeChanged()V
.end method
