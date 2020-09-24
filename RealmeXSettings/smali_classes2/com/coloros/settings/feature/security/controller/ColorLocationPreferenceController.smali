.class public Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorLocationPreferenceController.java"


# static fields
.field public static final KEY_LOCATION:Ljava/lang/String; = "location"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getLocationString(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f120c1a

    return p0

    :cond_1
    const p0, 0x7f120c18

    return p0

    :cond_2
    const p0, 0x7f120c1e

    return p0

    :cond_3
    const p0, 0x7f120c1b

    return p0
.end method

.method public static getLocationSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120c27

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f120c26

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 39
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/controller/ColorLocationPreferenceController;->getLocationSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
