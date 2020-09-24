.class final Lcom/coloros/settings/SettingsApplication$1;
.super Ljava/lang/Object;
.source "SettingsApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/SettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/SettingsApplication;


# direct methods
.method constructor <init>(Lcom/coloros/settings/SettingsApplication;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/coloros/settings/SettingsApplication$1;->a:Lcom/coloros/settings/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 266
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->c()I

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 279
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->d()I

    return-void
.end method
