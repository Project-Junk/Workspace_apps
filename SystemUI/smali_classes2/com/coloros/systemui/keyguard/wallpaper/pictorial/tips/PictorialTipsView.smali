.class public abstract Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;
.super Landroid/widget/ImageView;
.source "PictorialTipsView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TipsView"


# instance fields
.field protected mAllowState:Z

.field protected mCreate:Z

.field protected mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

.field protected mShow:Z

.field protected mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, v1, v0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->mCreate:Z

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->mCreate:Z

    return-void
.end method

.method protected abstract init(Landroid/content/Context;)V
.end method

.method protected abstract isNeedShow()Z
.end method

.method public markShow()V
    .locals 0

    return-void
.end method

.method public setAllowStates(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->mAllowState:Z

    return-void
.end method

.method public setOnTipsListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->mOnTipsListener:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;

    return-void
.end method

.method public updateMessageViewInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/PictorialTipsView;->mViewInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    return-void
.end method

.method public abstract updateTipsState()V
.end method
