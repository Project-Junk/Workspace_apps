.class public Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field private final mBrightnessMirrorListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInt2Cache:[I

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private final mVisibilityCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowView;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v0, 0x7f0a0116

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const v0, 0x7f0a0407

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$BrightnessMirrorController$6Ez050oVQOhwQ3Mf-NjJAvUx4_k;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$BrightnessMirrorController$6Ez050oVQOhwQ3Mf-NjJAvUx4_k;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlphaEndAction(Ljava/lang/Runnable;)V

    .line 57
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method private reinflate()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->removeView(Landroid/view/View;)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v3, 0x0

    const v4, 0x7f0d0054

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->addView(Landroid/view/View;I)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;->onBrightnessMirrorReinflated(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    return-void
.end method

.method public getMirror()Landroid/view/View;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    return-object p0
.end method

.method public hideMirror()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/16 v0, 0xff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlpha(IZ)Z

    return-void
.end method

.method public synthetic lambda$new$0$BrightnessMirrorController()V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate()V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    return-void
.end method

.method public setLocation(Landroid/view/View;)V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 77
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget p1, p1, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 83
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    sub-int/2addr v2, v1

    int-to-float p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public showMirror()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlpha(IZ)Z

    return-void
.end method

.method public updateResources()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07074a

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v2, 0x7f070127

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x7f0b00b6

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method