.class public abstract Lcom/coloros/systemui/notification/base/NotificationStackScrollLayoutBase;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayoutBase.java"


# instance fields
.field protected mFooterShowDismissView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public isFooterShowDismiss()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/base/NotificationStackScrollLayoutBase;->mFooterShowDismissView:Z

    return p0
.end method
