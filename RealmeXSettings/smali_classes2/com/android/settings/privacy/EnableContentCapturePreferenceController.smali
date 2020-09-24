.class public final Lcom/android/settings/privacy/EnableContentCapturePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "EnableContentCapturePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAvailabilityStatus()I
    .locals 2

    .line 45
    invoke-static {}, Lcom/android/settings/utils/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/android/settings/utils/c;->b()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

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

    .line 34
    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCapturePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final setChecked(Z)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCapturePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/utils/c;->a(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1
.end method
