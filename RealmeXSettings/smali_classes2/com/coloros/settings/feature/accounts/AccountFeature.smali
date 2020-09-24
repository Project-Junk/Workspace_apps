.class public Lcom/coloros/settings/feature/accounts/AccountFeature;
.super Lcom/color/injector/adaptor/g;
.source "AccountFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "account"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountFeature"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getCancelListener$0(Landroidx/preference/TwoStatePreference;ZLandroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAccountTypePreference(Lcom/android/settingslib/b/a;Landroid/os/UserHandle;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I[Landroid/accounts/Account;Landroid/content/Context;Landroid/content/Context;Landroid/accounts/Account;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/b/a;",
            "Landroid/os/UserHandle;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "I[",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "I)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    .line 98
    :cond_0
    array-length v5, v3

    const/4 v14, 0x1

    if-ne v5, v14, :cond_2

    .line 1192
    invoke-virtual {v0, v13}, Lcom/android/settingslib/b/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1193
    invoke-virtual {v0, v13}, Lcom/android/settingslib/b/a;->b(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1194
    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v5, :cond_1

    move v5, v14

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    if-nez v5, :cond_2

    move v5, v14

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    const-string v7, "android.intent.extra.USER"

    if-eqz v5, :cond_3

    .line 101
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 102
    aget-object v3, v3, v6

    const-string v5, "account"

    invoke-virtual {v11, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    invoke-virtual {v11, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    new-instance v1, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;

    const-class v3, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;

    .line 109
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 110
    invoke-virtual {v0, v4, v13}, Lcom/android/settingslib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v3, v1

    move-object/from16 v4, p9

    move/from16 v5, p12

    move-object/from16 v6, p11

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_3
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v3, "account_type"

    .line 113
    invoke-virtual {v11, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "account_label"

    .line 114
    invoke-virtual {v11, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v11, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    new-instance v1, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;

    const-class v3, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    .line 120
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-virtual {v0, v4, v13}, Lcom/android/settingslib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v3, v1

    move-object/from16 v4, p9

    move/from16 v5, p12

    move-object/from16 v6, p11

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return v14
.end method

.method public filterPreferenceList(Landroid/os/UserHandle;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 131
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountTypePreference;

    .line 132
    instance-of v3, v2, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;

    if-eqz v3, :cond_1

    .line 133
    check-cast v2, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;

    .line 134
    invoke-virtual {v2}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->a()Ljava/lang/CharSequence;

    move-result-object v3

    .line 135
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.intent.extra.USER"

    if-eqz v4, :cond_2

    .line 138
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;

    .line 139
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2065
    iget-object v6, v2, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->g:Ljava/lang/String;

    const-string v7, "account_type"

    .line 140
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "account_label"

    .line 141
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    const-class v5, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v4}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2069
    :cond_2
    iget-object v4, v2, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->h:Landroid/accounts/Account;

    .line 146
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "account"

    .line 147
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    invoke-virtual {v6, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-class v5, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 156
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/accounts/ColorAccountTypePreference;

    if-eqz v0, :cond_4

    .line 159
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method public getAddLayoutResource()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x7f0d00b1

    return v0
.end method

.method public getCancelListener(Landroidx/preference/TwoStatePreference;Z)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 195
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/accounts/-$$Lambda$AccountFeature$0K9cCWkMwtlg_4VPvJULYbshstk;

    invoke-direct {v0, p1, p2}, Lcom/coloros/settings/feature/accounts/-$$Lambda$AccountFeature$0K9cCWkMwtlg_4VPvJULYbshstk;-><init>(Landroidx/preference/TwoStatePreference;Z)V

    return-object v0
.end method

.method public getDrawableForPreferenceAccount(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 172
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 2102
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2104
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1080093

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2108
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070556

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2109
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2110
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 2111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "referWidth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "iconWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OppoIconUtils"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_3

    if-eq v2, v0, :cond_4

    .line 2113
    :cond_3
    invoke-static {p1, p2, v0, v0}, Lcom/coloros/settings/utils/af;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 183
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/ColorPackageManager;->getColorPackageManager(Landroid/content/Context;)Landroid/content/pm/ColorPackageManager;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p2}, Landroid/content/pm/ColorPackageManager;->getApplicationIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountFeature"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getManagedIcon(I)I
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f080813

    return p1
.end method

.method public getRemoveIcon(I)I
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f080442

    return p1
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public interceptSingleProvider()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAddIcon()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setPlaySound(Landroidx/preference/TwoStatePreference;)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    instance-of v0, p1, Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_1

    .line 215
    check-cast p1, Lcom/color/support/preference/ColorSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    :cond_1
    return-void
.end method

.method public setProviderPreferenceStyle(Lcom/android/settings/accounts/ProviderPreference;II)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/AccountFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 168
    invoke-static {p1, p2, p3, v0}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/Preference;IIZ)V

    return-void
.end method
