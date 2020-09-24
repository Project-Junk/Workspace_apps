.class final Lcom/android/settings/network/MobileNetworkPreferenceController$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MobileNetworkPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/MobileNetworkPreferenceController;
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

    .line 168
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;->a:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;->a:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->a(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;->a:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->b(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
