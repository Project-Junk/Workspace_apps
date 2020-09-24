.class final Lcom/android/settings/wifi/tether/c$1;
.super Ljava/lang/Object;
.source "WifiTetherSoftApManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/tether/c;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/c;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/android/settings/wifi/tether/c$1;->a:Lcom/android/settings/wifi/tether/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNumClientsChanged(I)V
    .locals 0

    return-void
.end method

.method public final onStateChanged(II)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/settings/wifi/tether/c$1;->a:Lcom/android/settings/wifi/tether/c;

    .line 1009
    iget-object v0, v0, Lcom/android/settings/wifi/tether/c;->b:Lcom/android/settings/wifi/tether/c$a;

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/android/settings/wifi/tether/c$a;->a(II)V

    return-void
.end method
