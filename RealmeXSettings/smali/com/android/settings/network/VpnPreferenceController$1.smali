.class final Lcom/android/settings/network/VpnPreferenceController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VpnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/VpnPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/VpnPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/VpnPreferenceController;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/settings/network/VpnPreferenceController$1;->a:Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController$1;->a:Lcom/android/settings/network/VpnPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/VpnPreferenceController;->a()V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController$1;->a:Lcom/android/settings/network/VpnPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/VpnPreferenceController;->a()V

    return-void
.end method
