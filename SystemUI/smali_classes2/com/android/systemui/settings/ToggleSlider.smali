.class public interface abstract Lcom/android/systemui/settings/ToggleSlider;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Lcom/coloros/systemui/qs/IColorBaseToggleSlider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSlider$Listener;
    }
.end annotation


# virtual methods
.method public abstract getValue()I
.end method

.method public isChecked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public abstract setMax(I)V
.end method

.method public abstract setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
.end method

.method public abstract setValue(I)V
.end method
