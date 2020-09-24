.class public final Lcom/coloros/settings/feature/b/b;
.super Ljava/lang/Object;
.source "BluetoothChangedObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/b/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/b/b$a;",
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

    sput-object v0, Lcom/coloros/settings/feature/b/b;->a:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/coloros/settings/feature/b/b$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/b/b$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/b/b;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .line 27
    sget-object v0, Lcom/coloros/settings/feature/b/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Lcom/coloros/settings/feature/b/b$a;)V
    .locals 3

    .line 52
    sget-object v0, Lcom/coloros/settings/feature/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/coloros/settings/feature/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/coloros/settings/feature/b/b;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/coloros/settings/feature/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static b(Lcom/coloros/settings/feature/b/b$a;)V
    .locals 1

    .line 65
    sget-object v0, Lcom/coloros/settings/feature/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 66
    sget-object p0, Lcom/coloros/settings/feature/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/coloros/settings/feature/b/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
