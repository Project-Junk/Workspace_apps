.class final Lcom/android/settings/notification/SettingPrefController$a;
.super Landroid/database/ContentObserver;
.source "SettingPrefController.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SettingPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/SettingPrefController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SettingPrefController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController$a;->a:Lcom/android/settings/notification/SettingPrefController;

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController$a;->a:Lcom/android/settings/notification/SettingPrefController;

    invoke-static {v0}, Lcom/android/settings/notification/SettingPrefController;->a(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController$a;->a:Lcom/android/settings/notification/SettingPrefController;

    iget-object p1, p1, Lcom/android/settings/notification/SettingPrefController;->b:Lcom/android/settings/notification/r;

    .line 1128
    iget-object p1, p1, Lcom/android/settings/notification/r;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 104
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController$a;->a:Lcom/android/settings/notification/SettingPrefController;

    iget-object p1, p1, Lcom/android/settings/notification/SettingPrefController;->b:Lcom/android/settings/notification/r;

    .line 2128
    iget-object p1, p1, Lcom/android/settings/notification/r;->f:Landroid/net/Uri;

    .line 111
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController$a;->a:Lcom/android/settings/notification/SettingPrefController;

    iget-object p1, p1, Lcom/android/settings/notification/SettingPrefController;->b:Lcom/android/settings/notification/r;

    iget-object p2, p0, Lcom/android/settings/notification/SettingPrefController$a;->a:Lcom/android/settings/notification/SettingPrefController;

    invoke-static {p2}, Lcom/android/settings/notification/SettingPrefController;->b(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/r;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
