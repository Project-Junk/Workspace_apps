.class final Lcom/android/settings/applications/r$b;
.super Lcom/android/settings/applications/t;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/android/settings/applications/q$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/q$b;)V
    .locals 1

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/applications/t;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    .line 175
    iput-object p3, p0, Lcom/android/settings/applications/r$b;->a:Lcom/android/settings/applications/q$b;

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/applications/r$b;->a:Lcom/android/settings/applications/q$b;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/q$b;->onNumberOfAppsResult(I)V

    return-void
.end method
