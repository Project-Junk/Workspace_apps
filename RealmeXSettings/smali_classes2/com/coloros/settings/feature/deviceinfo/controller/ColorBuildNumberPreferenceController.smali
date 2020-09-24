.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;
.super Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;
.source "ColorBuildNumberPreferenceController.java"


# static fields
.field private static final BUILD_DISPLAY_SPLIT_SIZE:I = 0x3

.field private static final KEY_BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final LEVEL_Q:I = 0x1d

.field private static final PRODUCT_EXP_VERSION:Ljava/lang/String; = "ro.product.oppo.exp.version"

.field private static final PRODUCT_FIRST_API_LEVEL:Ljava/lang/String; = "ro.product.first_api_level"

.field private static final TAG:Ljava/lang/String; = "ColorBuildNumberPreferenceController"


# instance fields
.field private mShowDev:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "build_number"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private buildNumberInfoExp(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v1, "ColorBuildNumberPreferenceController"

    const-string v0, "ro.product.oppo.exp.version"

    .line 119
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "ro.product.first_api_level"

    const-string v4, "0"

    .line 123
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "buildNumberInfoExp : "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    const/16 v4, 0x1d

    if-lt v0, v4, :cond_0

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getSummary, expVersion: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    array-length v5, v2

    const/4 v6, 0x3

    const-string v7, ""

    if-ge v5, v6, :cond_1

    return-object v7

    .line 138
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v9, v2, v8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    aget-object v10, v2, v9

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v10, 0x7f0300b6

    .line 139
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v10, "persist.sys.oppo.region"

    const-string v11, "CN"

    .line 1034
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "MX"

    .line 143
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 145
    :cond_2
    invoke-static {p1}, Lcom/coloros/settings/utils/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "NZ"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "OPPO"

    if-nez v10, :cond_5

    .line 146
    invoke-static {p1}, Lcom/coloros/settings/utils/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "SG"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 147
    invoke-static {p1}, Lcom/coloros/settings/utils/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "EE"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 152
    :cond_3
    array-length v10, v0

    :goto_1
    if-ge v3, v10, :cond_6

    aget-object v12, v0, v3

    .line 153
    invoke-static {}, Lcom/coloros/settings/utils/p;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 154
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "operator: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 156
    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {p1}, Lcom/coloros/settings/utils/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    :cond_6
    :goto_3
    array-length v0, v2

    if-le v0, v6, :cond_7

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    :cond_7
    invoke-static {}, Lcom/coloros/settings/utils/p;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move-object/from16 v0, p3

    :cond_8
    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    goto :goto_4

    :cond_9
    return-object v7

    :cond_a
    move-object v0, v5

    :goto_4
    return-object v0
.end method

.method private getNewTitle()Ljava/lang/String;
    .locals 4

    const-string v0, "ro.build.time.fix"

    .line 182
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12045a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {}, Lcom/coloros/settings/utils/p;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 188
    iget-boolean v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mShowDev:Z

    if-nez v2, :cond_1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f121417

    .line 190
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "show"

    .line 71
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mShowDev:Z

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->getNewTitle()Ljava/lang/String;

    move-result-object v1

    .line 79
    :try_start_0
    instance-of v2, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v2, :cond_0

    .line 80
    move-object v2, p1

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 81
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12147c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-boolean v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mShowDev:Z

    if-nez v2, :cond_1

    .line 84
    move-object v2, p1

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->c(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 93
    :catch_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12077e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_2

    .line 95
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 97
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 57
    invoke-static {}, Lcom/coloros/settings/utils/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "ro.build.time.fix"

    .line 107
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys.build.display.id"

    .line 108
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 110
    :cond_0
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_2

    .line 111
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->mShowDev:Z

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 111
    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBuildNumberPreferenceController;->buildNumberInfoExp(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method
