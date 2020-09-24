.class public interface abstract Lcom/android/settings/search/c;
.super Ljava/lang/Object;
.source "SearchFeatureProvider.java"


# direct methods
.method private synthetic a(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 94
    invoke-interface {p0, p3, p2}, Lcom/android/settings/search/c;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p2

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {p3}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object v0

    .line 102
    invoke-interface {v0, p3}, Lcom/android/settings/slices/j;->b(Landroid/content/Context;)V

    .line 103
    invoke-static {p3}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    const/16 v1, 0xe2

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    .line 104
    invoke-virtual {v0, p3, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/16 p3, 0x1f5

    .line 105
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic lambda$wOYmcX8R7vbL58_s3lgU8lJfAkE(Lcom/android/settings/search/c;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/search/c;->a(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;I)Landroid/content/Intent;
.end method

.method public abstract a()Lcom/android/settingslib/o/a;
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1205f8

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;Landroid/widget/Toolbar;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {p0, p1}, Lcom/android/settings/search/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/m;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p2}, Landroid/widget/Toolbar;->getNavigationView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x2

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x5de

    .line 92
    new-instance v1, Lcom/android/settings/search/-$$Lambda$c$wOYmcX8R7vbL58_s3lgU8lJfAkE;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/search/-$$Lambda$c$wOYmcX8R7vbL58_s3lgU8lJfAkE;-><init>(Lcom/android/settings/search/c;Landroid/app/Activity;I)V

    invoke-virtual {p2, v1}, Landroid/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 77
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
