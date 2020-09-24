.class public Lcom/coloros/systemui/statusbar/phone/ColorBarBackgroundDrawable;
.super Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.source "ColorBarBackgroundDrawable.java"


# instance fields
.field private mIsNavBarDrawable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/phone/ColorBarBackgroundDrawable;->mIsNavBarDrawable:Z

    .line 16
    instance-of p2, p3, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p2, :cond_0

    const p2, 0x7f060275

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/phone/ColorBarBackgroundDrawable;->mOpaque:I

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/phone/ColorBarBackgroundDrawable;->mIsNavBarDrawable:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isNavBarDrawable()Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/phone/ColorBarBackgroundDrawable;->mIsNavBarDrawable:Z

    return p0
.end method
