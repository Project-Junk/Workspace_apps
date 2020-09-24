.class public Landroidx/appcompat/widget/FitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroidx/appcompat/widget/af;


# instance fields
.field private a:Landroidx/appcompat/widget/af$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->a:Landroidx/appcompat/widget/af$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->a:Landroidx/appcompat/widget/af$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/af$a;->a(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public setOnFitSystemWindowsListener(Landroidx/appcompat/widget/af$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->a:Landroidx/appcompat/widget/af$a;

    return-void
.end method
