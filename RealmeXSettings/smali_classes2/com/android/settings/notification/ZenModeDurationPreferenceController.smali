.class public Lcom/android/settings/notification/ZenModeDurationPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeDurationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_duration_settings"

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_duration_settings"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->c()I

    move-result v0

    if-gez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121b15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121b16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_2

    .line 54
    div-int/2addr v0, v3

    .line 55
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100062

    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 55
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121b17

    new-array v2, v2, [Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 58
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
