.class public abstract Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "AdjustVolumeRestrictedPreferenceController.java"


# instance fields
.field private mHelper:Lcom/android/settings/accounts/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/c;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 48
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->mHelper:Lcom/android/settings/accounts/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/android/settings/accounts/c;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/c;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 54
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->mHelper:Lcom/android/settings/accounts/c;

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    .line 58
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_adjust_volume"

    .line 57
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/settings/accounts/c;->a(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    return-void
.end method
