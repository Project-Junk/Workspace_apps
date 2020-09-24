.class public final Lcom/android/settings/network/telephony/RoamingPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "RoamingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/RoamingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/RoamingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/RoamingPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController$a;->a:Lcom/android/settings/network/telephony/RoamingPreferenceController;

    .line 159
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 165
    iget-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController$a;->a:Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->access$000(Lcom/android/settings/network/telephony/RoamingPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
