.class public Lcom/coloros/settings/feature/othersettings/development/ColorAppsNotRespondingPreferenceController;
.super Lcom/android/settings/development/AppsNotRespondingPreferenceController;
.source "ColorAppsNotRespondingPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAppsNotRespondingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->C(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
