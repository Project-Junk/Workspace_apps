.class public Lcom/coloros/settings/feature/privacy/AppEncryptionPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "AppEncryptionPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppEncryptionPreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getPrivacySwitchState()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/privacy/AppEncryptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/coloros/settings/utils/a/a;->c:Landroid/net/Uri;

    const-string v2, "value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "key= ?"

    const-string v2, "pp_privacy_protect"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v0, v3

    :cond_1
    if-eqz v1, :cond_4

    .line 95
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "AppEncryptionPreferenceController"

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error occur, e = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_5

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_5
    throw v0
.end method

.method public static isPreferenceAvailable()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

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

    .line 44
    invoke-static {}, Lcom/coloros/settings/feature/privacy/AppEncryptionPreferenceController;->isPreferenceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/privacy/AppEncryptionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/AppEncryptionPreferenceController;->getPrivacySwitchState()Z

    move-result p1

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_1

    const-string p1, "com.oppo.safe.action.APP_PROTECT_LIST_ACTIVITY"

    .line 62
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p1, "com.oppo.safe.action.FIRST_USE_PROTECT_ACTIVITY"

    .line 64
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.coloros.safecenter"

    .line 66
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/privacy/AppEncryptionPreferenceController;->startActivitySafely(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return v0
.end method
