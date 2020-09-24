.class public final Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "EnableContentCaptureWithServiceSettingsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentCaptureController"


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final getAvailabilityStatus()I
    .locals 2

    .line 86
    invoke-static {}, Lcom/android/settings/utils/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/android/settings/utils/c;->b()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$updateState$0$EnableContentCaptureWithServiceSettingsPreferenceController(Landroidx/preference/Preference;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$a;->a(Landroid/content/Context;Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setChecked(Z)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/utils/c;->a(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 69
    invoke-static {}, Lcom/android/settings/utils/c;->b()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "ContentCaptureController"

    const-string v1, "No component name for custom service settings"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 78
    :goto_0
    new-instance v0, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$wvbA3waPG91zIQ9YKuVJlMjUL8Q;

    invoke-direct {v0, p0}, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$wvbA3waPG91zIQ9YKuVJlMjUL8Q;-><init>(Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method