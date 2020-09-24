.class public Lcom/google/android/setupdesign/b/f;
.super Ljava/lang/Object;
.source "ProgressBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# instance fields
.field public final a:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field public b:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/setupdesign/b/f;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    return-void
.end method

.method private a()Landroid/widget/ProgressBar;
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/google/android/setupdesign/b/f;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/android/setupdesign/b/f;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/b$d;->sud_layout_progress_stub:I

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/b/f;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/b/f;->a(Landroid/content/res/ColorStateList;)V

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/google/android/setupdesign/b/f;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/widget/ProgressBar;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/android/setupdesign/b/f;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/b$d;->sud_layout_progress:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    iput-object p1, p0, Lcom/google/android/setupdesign/b/f;->b:Landroid/content/res/ColorStateList;

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/google/android/setupdesign/b/f;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    if-eqz p1, :cond_1

    .line 114
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/google/android/setupdesign/b/f;->a()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/google/android/setupdesign/b/f;->b()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
