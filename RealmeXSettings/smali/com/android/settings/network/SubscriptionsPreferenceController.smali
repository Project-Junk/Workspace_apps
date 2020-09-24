.class public Lcom/android/settings/network/SubscriptionsPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "SubscriptionsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/b$a;
.implements Lcom/android/settings/network/g$a;
.implements Lcom/android/settings/network/telephony/b$a;
.implements Lcom/android/settings/network/telephony/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/SubscriptionsPreferenceController$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/network/SubscriptionsPreferenceController$a;

.field private b:Ljava/lang/String;

.field private c:Landroidx/preference/PreferenceGroup;

.field private d:Landroid/telephony/SubscriptionManager;

.field private e:Landroid/net/ConnectivityManager;

.field private f:Lcom/android/settings/network/g;

.field private g:Lcom/android/settings/network/b;

.field private h:Lcom/android/settings/network/telephony/b;

.field private i:Lcom/android/settings/network/telephony/f;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/SubscriptionsPreferenceController$a;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->a:Lcom/android/settings/network/SubscriptionsPreferenceController$a;

    .line 111
    iput-object p4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->b:Ljava/lang/String;

    const/16 p3, 0xa

    .line 112
    iput p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->k:I

    .line 113
    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->d:Landroid/telephony/SubscriptionManager;

    .line 114
    iget-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const-class p4, Landroid/net/ConnectivityManager;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->e:Landroid/net/ConnectivityManager;

    .line 115
    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->j:Ljava/util/Map;

    .line 116
    new-instance p3, Lcom/android/settings/network/g;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/g;-><init>(Landroid/content/Context;Lcom/android/settings/network/g$a;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->f:Lcom/android/settings/network/g;

    .line 117
    new-instance p3, Lcom/android/settings/network/b;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/b;-><init>(Landroid/content/Context;Lcom/android/settings/network/b$a;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->g:Lcom/android/settings/network/b;

    .line 118
    new-instance p3, Lcom/android/settings/network/telephony/b;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/b;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/b$a;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->h:Lcom/android/settings/network/telephony/b;

    .line 119
    new-instance p3, Lcom/android/settings/network/telephony/f;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/telephony/f;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/f$a;)V

    iput-object p3, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->i:Lcom/android/settings/network/telephony/f;

    .line 120
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private a(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private a(IZ)Ljava/lang/String;
    .locals 3

    .line 250
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 251
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12073f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12073e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120741

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz p2, :cond_5

    .line 264
    iget-object p2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 265
    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 267
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 268
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f120d95

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 270
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f120d99

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 272
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f120740

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 277
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object v2, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    if-eqz v2, :cond_8

    return-object v2

    .line 283
    :cond_8
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f12160a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroidx/preference/Preference;IZ)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 207
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    :goto_0
    const/4 v3, 0x5

    .line 211
    invoke-direct {p0, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x6

    :cond_1
    if-eqz p3, :cond_2

    .line 215
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 216
    :cond_3
    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->a(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(I)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    .line 3033
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "config_inflateSignalStrength"

    .line 3034
    invoke-static {v0, v1}, Lcom/android/settingslib/m/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method private synthetic a(ILandroidx/preference/Preference;)Z
    .locals 2

    .line 182
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.provider.extra.SUB_ID"

    .line 183
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->c:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 153
    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->i:Lcom/android/settings/network/telephony/f;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/f;->a(Ljava/util/Set;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->a:Lcom/android/settings/network/SubscriptionsPreferenceController$a;

    invoke-interface {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$a;->onChildrenUpdated()V

    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->j:Ljava/util/Map;

    .line 162
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->j:Ljava/util/Map;

    .line 164
    iget v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->k:I

    .line 165
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 166
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 167
    iget-object v4, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->d:Landroid/telephony/SubscriptionManager;

    invoke-static {v4}, Lcom/android/settings/network/f;->a(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 168
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/Preference;

    if-nez v7, :cond_3

    .line 172
    new-instance v7, Landroidx/preference/Preference;

    iget-object v8, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 173
    iget-object v8, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 175
    :cond_3
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-ne v6, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 177
    :goto_2
    invoke-direct {p0, v6, v5}, Lcom/android/settings/network/SubscriptionsPreferenceController;->a(IZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    invoke-direct {p0, v7, v6, v5}, Lcom/android/settings/network/SubscriptionsPreferenceController;->a(Landroidx/preference/Preference;IZ)V

    add-int/lit8 v5, v1, 0x1

    .line 179
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 181
    new-instance v1, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$zXnBnN8mFuDrEiifdleVWcYDhFs;

    invoke-direct {v1, p0, v6}, Lcom/android/settings/network/-$$Lambda$SubscriptionsPreferenceController$zXnBnN8mFuDrEiifdleVWcYDhFs;-><init>(Lcom/android/settings/network/SubscriptionsPreferenceController;I)V

    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->j:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    goto :goto_1

    .line 190
    :cond_5
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->i:Lcom/android/settings/network/telephony/f;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/f;->a(Ljava/util/Set;)V

    .line 193
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 194
    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 196
    :cond_6
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->a:Lcom/android/settings/network/SubscriptionsPreferenceController$a;

    invoke-interface {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController$a;->onChildrenUpdated()V

    return-void
.end method

.method private e()Z
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 235
    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$zXnBnN8mFuDrEiifdleVWcYDhFs(Lcom/android/settings/network/SubscriptionsPreferenceController;ILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/SubscriptionsPreferenceController;->a(ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->d()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->d()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->d()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->c:Landroidx/preference/PreferenceGroup;

    .line 143
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->d()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->f:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->d:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/f;->a(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->d()V

    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->f:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->b()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->g:Lcom/android/settings/network/b;

    invoke-virtual {v0}, Lcom/android/settings/network/b;->a()Lcom/android/settings/network/b;

    .line 136
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->h:Lcom/android/settings/network/telephony/b;

    .line 2053
    iget-object v1, v0, Lcom/android/settings/network/telephony/b;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->i:Lcom/android/settings/network/telephony/f;

    .line 2059
    iget-object v1, v0, Lcom/android/settings/network/telephony/f;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2060
    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/f;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->f:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->a()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->g:Lcom/android/settings/network/b;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/b;->a(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->h:Lcom/android/settings/network/telephony/b;

    .line 1048
    iget-object v1, v0, Lcom/android/settings/network/telephony/b;->b:Landroid/net/ConnectivityManager;

    iget-object v2, v0, Lcom/android/settings/network/telephony/b;->c:Landroid/net/NetworkRequest;

    iget-object v3, v0, Lcom/android/settings/network/telephony/b;->a:Landroid/content/Context;

    .line 1049
    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1048
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->i:Lcom/android/settings/network/telephony/f;

    .line 1052
    iget-object v1, v0, Lcom/android/settings/network/telephony/f;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1053
    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/f;->a(I)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->d()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 2

    .line 311
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->g:Lcom/android/settings/network/b;

    .line 3057
    iget v1, v1, Lcom/android/settings/network/b;->a:I

    if-eq v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->g:Lcom/android/settings/network/b;

    invoke-virtual {v1}, Lcom/android/settings/network/b;->a()Lcom/android/settings/network/b;

    .line 314
    iget-object v1, p0, Lcom/android/settings/network/SubscriptionsPreferenceController;->g:Lcom/android/settings/network/b;

    invoke-virtual {v1, v0}, Lcom/android/settings/network/b;->a(I)V

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->d()V

    return-void
.end method
