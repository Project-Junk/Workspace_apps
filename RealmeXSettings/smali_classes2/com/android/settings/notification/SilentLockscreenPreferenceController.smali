.class public Lcom/android/settings/notification/SilentLockscreenPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SilentLockscreenPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SilentLockscreenPreferenceController$a;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "lock_screen"


# instance fields
.field private mListener:Lcom/android/settings/notification/SilentLockscreenPreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "lock_screen"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/SilentLockscreenPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "new_interruption_model"

    const/4 v2, 0x1

    .line 56
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/settings/notification/SilentLockscreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lock_screen_show_silent_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/SilentLockscreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_silent_notifications"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/SilentLockscreenPreferenceController;->mListener:Lcom/android/settings/notification/SilentLockscreenPreferenceController$a;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Lcom/android/settings/notification/SilentLockscreenPreferenceController$a;->onChange(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setListener(Lcom/android/settings/notification/SilentLockscreenPreferenceController$a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/notification/SilentLockscreenPreferenceController;->mListener:Lcom/android/settings/notification/SilentLockscreenPreferenceController$a;

    return-void
.end method
