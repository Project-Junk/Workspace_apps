.class public final Lcom/android/settings/notification/v;
.super Lcom/android/settingslib/core/a;
.source "ZenModeAutomationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/notification/ZenModeSettings$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$a;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/ZenModeSettings$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/v;->a:Lcom/android/settings/notification/ZenModeSettings$a;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_automation_settings"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/v;->a:Lcom/android/settings/notification/ZenModeSettings$a;

    .line 1210
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$a;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 1211
    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    const v1, 0x7f121b84

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$a;->a:Landroid/content/Context;

    .line 1212
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100064

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1212
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
