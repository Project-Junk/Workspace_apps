.class final Lcom/android/settings/network/MobileNetworkPreferenceController$2;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/MobileNetworkPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/MobileNetworkPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->a:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->a:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->a(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->a:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->b(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
