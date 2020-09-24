.class public final Lcom/android/settings/development/k;
.super Lcom/android/settingslib/development/b;
.source "FileEncryptionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/os/storage/IStorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/android/settings/development/k;->c()Landroid/os/storage/IStorageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/k;->a:Landroid/os/storage/IStorageManager;

    return-void
.end method

.method private static c()Landroid/os/storage/IStorageManager;
    .locals 1

    :try_start_0
    const-string v0, "mount"

    .line 79
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "convert_to_file_encryption"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/settings/development/k;->a:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->isConvertibleToFBE()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 66
    invoke-static {}, Landroid/sysprop/CryptoProperties;->type()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Landroid/sysprop/CryptoProperties$type_values;->NONE:Landroid/sysprop/CryptoProperties$type_values;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroid/sysprop/CryptoProperties$type_values;->FILE:Landroid/sysprop/CryptoProperties$type_values;

    if-eq p1, v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/k;->d:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/development/k;->d:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/development/k;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12063c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
