.class public Lcom/coloros/settings/widget/LocalColorListView;
.super Lcom/coloros/settings/widget/SettingsColorListView;
.source "LocalColorListView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/SettingsColorListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/SettingsColorListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/SettingsColorListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 52
    iget-object v2, p0, Lcom/coloros/settings/widget/LocalColorListView;->a:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/coloros/settings/widget/LocalColorListView;->b:Z

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 54
    iget-object v3, p0, Lcom/coloros/settings/widget/LocalColorListView;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 55
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/SettingsColorListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setIgnoreInterceptEnabled(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/coloros/settings/widget/LocalColorListView;->b:Z

    return-void
.end method

.method public setIgnoreInterceptView(Landroid/view/View;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/coloros/settings/widget/LocalColorListView;->a:Landroid/view/View;

    return-void
.end method
