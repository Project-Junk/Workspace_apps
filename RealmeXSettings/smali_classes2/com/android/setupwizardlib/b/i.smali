.class public Lcom/android/setupwizardlib/b/i;
.super Ljava/lang/Object;
.source "ProgressBarMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/b/g;


# instance fields
.field public a:Lcom/android/setupwizardlib/TemplateLayout;

.field public b:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/setupwizardlib/b/i;->a:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method

.method private a()Landroid/widget/ProgressBar;
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/android/setupwizardlib/b/i;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/setupwizardlib/b/i;->a:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/b$d;->suw_layout_progress_stub:I

    .line 1109
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/b/i;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/b/i;->a(Landroid/content/res/ColorStateList;)V

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/android/setupwizardlib/b/i;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/widget/ProgressBar;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/setupwizardlib/b/i;->a:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/b$d;->suw_layout_progress:I

    .line 2109
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
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

    .line 112
    iput-object p1, p0, Lcom/android/setupwizardlib/b/i;->b:Landroid/content/res/ColorStateList;

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/android/setupwizardlib/b/i;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    if-eqz p1, :cond_1

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/android/setupwizardlib/b/i;->a()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/android/setupwizardlib/b/i;->b()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
