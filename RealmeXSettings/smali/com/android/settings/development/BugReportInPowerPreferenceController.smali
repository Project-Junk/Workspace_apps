.class public Lcom/android/settings/development/BugReportInPowerPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "BugReportInPowerPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# static fields
.field static a:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final c:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->c:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bugreport_in_power"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->c:Landroid/os/UserManager;

    const-string v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m_()V
    .locals 3

    .line 76
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->b:I

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 60
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 61
    iget-object p2, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz p1, :cond_0

    sget p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->a:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->b:I

    :goto_0
    const-string v0, "bugreport_in_power_menu"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget v0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->b:I

    const-string v1, "bugreport_in_power_menu"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    sget v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;->b:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
