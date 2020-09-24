.class public Lcom/coloros/settings/feature/othersettings/input/ColorSecurityWindowPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorSecurityWindowPreferenceController.java"


# static fields
.field public static final KEY_SECURITY_WINDOW:Ljava/lang/String; = "security_window"

.field public static final SETTINGS_SECURITY_WINDOW:Ljava/lang/String; = "security_window"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_window"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorSecurityWindowPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 4

    .line 34
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 35
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorSecurityWindowPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "security_window"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorSecurityWindowPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "security_window"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method
