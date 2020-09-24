.class public final Lcom/google/android/setupcompat/internal/d;
.super Landroid/view/ContextThemeWrapper;
.source "FallbackThemeWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected final onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method
