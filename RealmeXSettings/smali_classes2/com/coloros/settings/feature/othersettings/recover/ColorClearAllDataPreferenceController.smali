.class public Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorClearAllDataPreferenceController.java"


# static fields
.field public static final KEY_CLEAR_ALL_DATA:Ljava/lang/String; = "clear_all_data"


# instance fields
.field private mIsAvailable:I

.field private final mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V
    .locals 1

    const-string v0, "clear_all_data"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;->mIsAvailable:I

    .line 34
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    .line 35
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result p2

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oppo.support.single.partition"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    .line 38
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;->isExtStorageEncrypted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 39
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/al;->e()Z

    return-void

    :cond_1
    const/4 p1, 0x3

    .line 40
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;->mIsAvailable:I

    :cond_2
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    const-string v0, "vold.decrypt"

    .line 46
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 55
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;->mIsAvailable:I

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clear_all_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/c;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/recover/c;-><init>()V

    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/h;->a(Lcom/coloros/settings/feature/othersettings/recover/j;)V

    const/4 p1, 0x1

    return p1
.end method
