.class final Lcom/android/settings/dashboard/e;
.super Lcom/android/settingslib/core/a;
.source "DashboardTilePlaceholderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const p1, 0x7fffffff

    .line 38
    iput p1, p0, Lcom/android/settings/dashboard/e;->a:I

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/dashboard/e;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/e;->a:I

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "dashboard_tile_placeholder"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
