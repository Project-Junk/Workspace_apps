.class public Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AmbientDisplayAlwaysOnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$a;
    }
.end annotation


# static fields
.field private static final MY_USER:I


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$a;

.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->ON:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->OFF:I

    return-void
.end method

.method private getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object v0
.end method

.method public static isAvailable(Landroid/hardware/display/AmbientDisplayConfiguration;)Z
    .locals 1

    .line 83
    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->isAvailable(Landroid/hardware/display/AmbientDisplayConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    sget v1, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambient_display_always_on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$a;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$a;

    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    .line 62
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    iget-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$a;

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$a;->onPreferenceChanged()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method
