.class public final Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;
.super Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.source "StatusBarWindowViewEx.kt"

# interfaces
.implements Lcom/coloros/systemui/common/receiver/IReceiverListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0014J\u0008\u0010\u000f\u001a\u00020\u000eH\u0014J\u001c\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;",
        "Lcom/android/systemui/statusbar/phone/StatusBarWindowView;",
        "Lcom/coloros/systemui/common/receiver/IReceiverListener;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "getLeftInset",
        "",
        "leftInset",
        "getRightInset",
        "rightInset",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "onReceive",
        "intent",
        "Landroid/content/Intent;",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getLeftInset(I)I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;->getDisplay()Landroid/view/Display;

    move-result-object p0

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public getRightInset(I)I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;->getDisplay()Landroid/view/Display;

    move-result-object p0

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onAttachedToWindow()V

    .line 50
    invoke-static {}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    move-result-object v0

    check-cast p0, Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onDetachedFromWindow()V

    .line 56
    invoke-static {}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    move-result-object v0

    check-cast p0, Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "oppo.intent.action.SKIN_CHANGED"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/StatusBarWindowViewEx;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onOverlayChanged()V

    :cond_1
    return-void
.end method
