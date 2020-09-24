.class public final Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LicenseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLicenseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LicenseActivity.kt\ncom/github/javiersantos/piracychecker/activities/LicenseActivity\n*L\n1#1,75:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u000cH\u0003J\u0008\u0010\u0011\u001a\u00020\u000cH\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "colorPrimary",
        "",
        "colorPrimaryDark",
        "description",
        "",
        "layoutXML",
        "withLightStatusBar",
        "",
        "getIntentData",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setActivityData",
        "setActivityStyle",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private colorPrimary:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private colorPrimaryDark:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private layoutXML:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private withLightStatusBar:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final getIntentData()V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->description:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/github/javiersantos/piracychecker/R$color;->colorPrimary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 37
    const-string v2, "colorPrimary"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 39
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/github/javiersantos/piracychecker/R$color;->colorPrimary:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->colorPrimary:I

    .line 40
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/github/javiersantos/piracychecker/R$color;->colorPrimaryDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 40
    const-string v2, "colorPrimaryDark"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 42
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/github/javiersantos/piracychecker/R$color;->colorPrimaryDark:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->colorPrimaryDark:I

    .line 43
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "withLightStatusBar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_3
    iput-boolean v1, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->withLightStatusBar:Z

    .line 44
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    const-string v2, "layoutXML"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_4
    iput v1, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->layoutXML:I

    .line 45
    return-void
.end method

.method private final setActivityData()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 62
    sget v0, Lcom/github/javiersantos/piracychecker/R$id;->mainContainer:I

    invoke-virtual {p0, v0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 64
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "factory":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    move-object v3, v2

    .line 65
    .local v3, "inflateView":Landroid/view/View;
    nop

    .line 66
    iget v4, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->layoutXML:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 67
    sget v4, Lcom/github/javiersantos/piracychecker/R$layout;->activity_license_default:I

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 68
    .end local v3    # "inflateView":Landroid/view/View;
    .local v2, "inflateView":Landroid/view/View;
    nop

    .line 69
    sget v3, Lcom/github/javiersantos/piracychecker/R$id;->piracy_checker_description:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 68
    check-cast v3, Landroid/widget/TextView;

    .line 70
    .local v3, "activityDescription":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->description:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    .end local v2    # "inflateView":Landroid/view/View;
    .local v3, "inflateView":Landroid/view/View;
    :cond_0
    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 73
    .end local v3    # "inflateView":Landroid/view/View;
    .restart local v2    # "inflateView":Landroid/view/View;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    move-object v3, v2

    .local v3, "it":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "$i$a$1$let":I
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    .end local v3    # "it":Landroid/view/View;
    .end local v4    # "$i$a$1$let":I
    :cond_2
    return-void
.end method

.method private final setActivityStyle()V
    .locals 5

    .line 48
    sget v0, Lcom/github/javiersantos/piracychecker/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 49
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget v2, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->colorPrimary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 51
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/github/javiersantos/piracychecker/activities/ActivityUtilsKt;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const-string v3, "window"

    if-lt v1, v2, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    iget v4, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->colorPrimaryDark:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "window.decorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->withLightStatusBar:Z

    invoke-static {v1, v2}, Lcom/github/javiersantos/piracychecker/activities/ActivityUtilsKt;->setupLightStatusBar(Landroid/view/View;Z)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/github/javiersantos/piracychecker/R$layout;->activity_license:I

    invoke-virtual {p0, v0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->getIntentData()V

    .line 31
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->setActivityStyle()V

    .line 32
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;->setActivityData()V

    .line 33
    return-void
.end method
