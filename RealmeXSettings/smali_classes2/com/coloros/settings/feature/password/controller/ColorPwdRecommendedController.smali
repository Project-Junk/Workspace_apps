.class public Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;
.super Lcom/android/settings/core/a;
.source "ColorPwdRecommendedController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "password_bottom_recommended"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "password_bottom_recommended"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;Landroid/content/Context;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->getPrivacySwitchState(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getPrivacySwitchState(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/coloros/settings/utils/a/a;->c:Landroid/net/Uri;

    const-string p1, "value"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "key= ?"

    const-string p1, "pp_privacy_protect"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 122
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 125
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 127
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 116
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    .line 127
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_5
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    throw v2

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    return v0

    :catch_2
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "password_bottom_recommended"

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    if-eqz p1, :cond_4

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {}, Lcom/coloros/settings/feature/privacy/AppEncryptionPreferenceController;->isPreferenceAvailable()Z

    move-result v1

    const-string v2, "password"

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    const v4, 0x7f120204

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_security"

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController$1;-><init>(Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/privacy/DataProtectKitPreferenceController;->isPreferenceAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.coloros.filemanager.FILE_SAFE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    const v5, 0x7f1213f8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "private_safe"

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/privacy/ChildrenSpacePreferenceController;->isPreferenceAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-string v3, "oppo.intent.action.CHILDREN_MODE_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.coloros.childrenspace"

    .line 90
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v3, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    const v5, 0x7f1204e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "kid_space"

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 100
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.coloros.codebook"

    const-string v4, "com.coloros.codebook.ui.CodeMainActivity"

    .line 101
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/controller/ColorPwdRecommendedController;->mContext:Landroid/content/Context;

    const v5, 0x7f12051c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "codebook"

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_3
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
