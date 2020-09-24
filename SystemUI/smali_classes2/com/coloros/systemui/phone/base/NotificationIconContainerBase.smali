.class public Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "NotificationIconContainerBase.java"


# instance fields
.field protected mStowLayout:Landroid/view/View;

.field protected mStowLayoutPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;->mStowLayout:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;->mStowLayout:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/coloros/systemui/phone/base/NotificationIconContainerBase;->mStowLayout:Landroid/view/View;

    return-void
.end method
