.class public final Lcom/android/settings/wifi/tether/c;
.super Ljava/lang/Object;
.source "WifiTetherSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/c$a;
    }
.end annotation


# instance fields
.field a:Landroid/net/wifi/WifiManager;

.field b:Lcom/android/settings/wifi/tether/c$a;

.field c:Landroid/net/wifi/WifiManager$SoftApCallback;

.field d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/tether/c$a;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/settings/wifi/tether/c$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/c$1;-><init>(Lcom/android/settings/wifi/tether/c;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/c;->c:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/tether/c;->a:Landroid/net/wifi/WifiManager;

    .line 40
    iput-object p2, p0, Lcom/android/settings/wifi/tether/c;->b:Lcom/android/settings/wifi/tether/c$a;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/c;->d:Landroid/os/Handler;

    return-void
.end method
