.class public Lcom/android/settings/accounts/ChooseAccountPreferenceController;
.super Lcom/android/settings/core/a;
.source "ChooseAccountPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChooseAccountPrefCtrler"


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAccountTypesFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAdaptor:Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private final mProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accounts/f;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mProviderList:Ljava/util/List;

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mTypeToAuthDescription:Ljava/util/Map;

    return-void
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 2

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "selected_account"

    .line 290
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 292
    iget-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 293
    iget-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getAdaptor()Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAdaptor:Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    if-nez v0, :cond_0

    .line 301
    const-class v0, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAdaptor:Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    .line 302
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAdaptor:Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->bind(Ljava/lang/Object;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAdaptor:Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    return-object v0
.end method

.method private getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAccountTypeToAuthorities:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 213
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAccountTypeToAuthorities:Ljava/util/Map;

    .line 214
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 215
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 214
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    const/4 v1, 0x0

    .line 216
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 217
    aget-object v3, v0, v1

    .line 218
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAccountTypeToAuthorities:Ljava/util/Map;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    .line 220
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAccountTypeToAuthorities:Ljava/util/Map;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v5, 0x2

    const-string v6, "ChooseAccountPrefCtrler"

    .line 223
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "added authority "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to accountType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAccountTypeToAuthorities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v3, v2

    const/4 v4, 0x2

    const-string v5, "ChooseAccountPrefCtrler"

    const/4 v6, 0x1

    if-ge v1, v3, :cond_6

    .line 139
    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 144
    invoke-direct {p0, v2}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 146
    iget-object v8, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    if-eqz v8, :cond_2

    array-length v8, v8

    if-lez v8, :cond_2

    if-eqz v7, :cond_2

    move v8, v0

    .line 148
    :goto_1
    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    array-length v10, v9

    if-ge v8, v10, :cond_1

    .line 149
    aget-object v9, v9, v8

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v6, v0

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 155
    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAccountTypesFilter:Ljava/util/Set;

    if-eqz v7, :cond_3

    .line 156
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v6, v0

    :cond_3
    if-eqz v6, :cond_4

    .line 160
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mProviderList:Ljava/util/List;

    new-instance v5, Lcom/android/settings/accounts/f;

    invoke-direct {v5, v3, v2}, Lcom/android/settings/accounts/f;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 162
    :cond_4
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Skipped pref "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": has no authority we need"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_8

    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->interceptSingleProvider()Z

    move-result v2

    if-nez v2, :cond_8

    .line 171
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mProviderList:Ljava/util/List;

    .line 173
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/f;

    .line 3045
    iget-object v2, v2, Lcom/android/settings/accounts/f;->b:Ljava/lang/String;

    .line 173
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 172
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/h;->g(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 175
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    .line 176
    invoke-static {v1}, Lcom/android/settingslib/g;->a(Lcom/android/settingslib/g$a;)Landroid/content/Intent;

    move-result-object v1

    .line 175
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 180
    :cond_7
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mProviderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/f;

    .line 4045
    iget-object v0, v0, Lcom/android/settings/accounts/f;->b:Ljava/lang/String;

    .line 180
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->finishWithAccountType(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_8
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 183
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mProviderList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/f;

    .line 5041
    iget-object v3, v2, Lcom/android/settings/accounts/f;->a:Ljava/lang/CharSequence;

    .line 186
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 190
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    move-result-object v3

    .line 5045
    iget-object v4, v2, Lcom/android/settings/accounts/f;->b:Ljava/lang/String;

    .line 190
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->getDrawableForPreferenceAccount(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 191
    new-instance v4, Lcom/android/settings/accounts/ProviderPreference;

    .line 6045
    iget-object v5, v2, Lcom/android/settings/accounts/f;->b:Ljava/lang/String;

    .line 7041
    iget-object v6, v2, Lcom/android/settings/accounts/f;->a:Ljava/lang/CharSequence;

    .line 192
    invoke-direct {v4, v1, v5, v3, v6}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 7045
    iget-object v2, v2, Lcom/android/settings/accounts/f;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/settings/accounts/ProviderPreference;->setKey(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 7058
    invoke-virtual {v4}, Lcom/android/settings/accounts/ProviderPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 8053
    iget-object v5, v4, Lcom/android/settings/accounts/ProviderPreference;->a:Ljava/lang/String;

    .line 7057
    invoke-static {v3, v5, v2}, Lcom/android/settingslib/h;->g(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v2

    .line 7059
    invoke-virtual {v4, v2}, Lcom/android/settings/accounts/ProviderPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 195
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    :cond_a
    return-void

    .line 198
    :cond_b
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_5
    if-ge v4, v3, :cond_c

    aget-object v6, v2, v4

    .line 201
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    .line 202
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 204
    :cond_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No providers found for authorities: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_d
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 129
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mTypeToAuthDescription:Ljava/util/Map;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->onAuthDescriptionsUpdated()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 105
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 106
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->updateAuthDescriptions()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "ChooseAccountPrefCtrler"

    .line 243
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 246
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->getAdaptor()Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 248
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 249
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v1, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 250
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 249
    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No icon resource for account type "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No icon name for account type "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    return-object v2

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "ChooseAccountPrefCtrler"

    .line 273
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 276
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 277
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 282
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No label resource for account type "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No label name for account type "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 111
    instance-of v0, p1, Lcom/android/settings/accounts/ProviderPreference;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 115
    :cond_0
    check-cast p1, Lcom/android/settings/accounts/ProviderPreference;

    const/4 v0, 0x2

    const-string v1, "ChooseAccountPrefCtrler"

    .line 116
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to add account of type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1053
    iget-object v2, p1, Lcom/android/settings/accounts/ProviderPreference;->a:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_1
    iget-object p1, p1, Lcom/android/settings/accounts/ProviderPreference;->a:Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->finishWithAccountType(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public initialize([Ljava/lang/String;[Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/Activity;)V
    .locals 1

    .line 85
    iput-object p4, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mActivity:Landroid/app/Activity;

    .line 86
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p2, :cond_0

    .line 90
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAccountTypesFilter:Ljava/util/Set;

    .line 91
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object p4, p2, p3

    .line 92
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;->mAccountTypesFilter:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
