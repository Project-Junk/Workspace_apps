.class public final Lcom/coloros/settings/feature/b/c;
.super Ljava/lang/Object;
.source "RingerModeChangedObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/b/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/b/c;->a:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/coloros/settings/feature/b/c$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/b/c$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/b/c;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .line 27
    sget-object v0, Lcom/coloros/settings/feature/b/c;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Lcom/coloros/settings/feature/b/c$a;)V
    .locals 2

    .line 52
    sget-object v0, Lcom/coloros/settings/feature/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/coloros/settings/feature/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/b/c;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    sget-object v0, Lcom/coloros/settings/feature/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static b(Lcom/coloros/settings/feature/b/c$a;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/coloros/settings/feature/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 68
    sget-object p0, Lcom/coloros/settings/feature/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 69
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/coloros/settings/feature/b/c;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
