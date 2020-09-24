.class public Lcom/android/settings/enterprise/ApplicationListFragment$EnterpriseInstalledPackages;
.super Lcom/android/settings/enterprise/ApplicationListFragment;
.source "ApplicationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/ApplicationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnterpriseInstalledPackages"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/enterprise/ApplicationListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/android/settings/applications/q$a;)V
    .locals 1

    .line 111
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;

    move-result-object p1

    .line 112
    invoke-interface {p1, p2}, Lcom/android/settings/applications/q;->a(Lcom/android/settings/applications/q$a;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3aa

    return v0
.end method
