.class public interface abstract Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;
.super Ljava/lang/Object;
.source "IKeyguardSliderPager.java"


# static fields
.field public static final LEFT:I = 0x0

.field public static final MAIN:I = 0x1

.field public static final MAIN_PAGE:I = 0x66

.field public static final MINUS_ONE:I = 0x65

.field public static final PICTORIAL_PRELOAD:I = 0x67

.field public static final RIGHT:I = 0x2


# virtual methods
.method public abstract attached()V
.end method

.method public abstract detached()V
.end method

.method public abstract direction()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hide()V
.end method

.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(FI)V
.end method

.method public abstract onPageSelected(Z)V
.end method

.method public abstract pagerType()I
.end method

.method public readyToShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setProcessY(F)V
    .locals 0

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    return-void
.end method

.method public abstract show()V
.end method
