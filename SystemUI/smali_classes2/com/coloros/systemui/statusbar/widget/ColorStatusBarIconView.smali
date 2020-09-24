.class public Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;
.super Lcom/android/systemui/statusbar/StatusBarIconView;
.source "ColorStatusBarIconView.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ColorStatusBarIconView"


# instance fields
.field private mDarkIntensity:F

.field private mIconTint:I

.field private mLayoutLeft:I

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mTintArea:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mIconTint:I

    .line 31
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mLayoutLeft:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mTintArea:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mIconTint:I

    .line 31
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mLayoutLeft:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mTintArea:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mIconTint:I

    .line 31
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mLayoutLeft:I

    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 47
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mIconTint:I

    .line 48
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mDarkIntensity:F

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 55
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->onLayout(ZIIII)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->getLocationOnScreen()[I

    move-result-object p1

    .line 57
    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mLayoutLeft:I

    const/4 p3, 0x0

    aget p4, p1, p3

    if-eq p2, p4, :cond_0

    const-string p2, "Statusbar"

    const-string p4, "ColorStatusBarIconView"

    const-string p5, "onDarkChanged before onLayout"

    .line 58
    invoke-static {p2, p4, p5}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    aget p1, p1, p3

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mLayoutLeft:I

    .line 60
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mTintArea:Landroid/graphics/Rect;

    iget p2, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mDarkIntensity:F

    iget p3, p0, Lcom/coloros/systemui/statusbar/widget/ColorStatusBarIconView;->mIconTint:I

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method
