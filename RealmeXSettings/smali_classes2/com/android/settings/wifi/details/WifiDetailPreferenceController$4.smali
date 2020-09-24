.class final Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/settingslib/wifi/a;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/wifi/details/WifiDetailPreferenceController$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$4;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
