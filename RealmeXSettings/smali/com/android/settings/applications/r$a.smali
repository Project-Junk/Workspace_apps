.class final Lcom/android/settings/applications/r$a;
.super Lcom/android/settings/applications/o;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/android/settings/applications/q$b;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/applications/q$b;)V
    .locals 0

    .line 192
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/o;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    .line 193
    iput-object p6, p0, Lcom/android/settings/applications/r$a;->a:Lcom/android/settings/applications/q$b;

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/settings/applications/r$a;->a:Lcom/android/settings/applications/q$b;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/q$b;->onNumberOfAppsResult(I)V

    return-void
.end method
