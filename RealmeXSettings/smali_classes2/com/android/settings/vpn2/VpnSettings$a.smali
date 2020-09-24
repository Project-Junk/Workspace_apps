.class final Lcom/android/settings/vpn2/VpnSettings$a;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/vpn2/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/b;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/b;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field private final g:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$a;->a:Ljava/util/List;

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$a;->b:Ljava/util/List;

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$a;->c:Ljava/util/Map;

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$a;->d:Ljava/util/Set;

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$a;->e:Ljava/util/Set;

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$a;->f:Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$a;->g:Lcom/android/settings/vpn2/VpnSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 287
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$a;->g:Lcom/android/settings/vpn2/VpnSettings;

    .line 1334
    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 296
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$a;->g:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v5, v2, v4}, Lcom/android/settings/vpn2/VpnSettings;->a(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v5

    .line 297
    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$a;->c:Ljava/util/Map;

    iget-object v7, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 298
    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$a;->c:Ljava/util/Map;

    iget-object v7, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v5, v6}, Lcom/android/settings/vpn2/LegacyVpnPreference;->b(I)V

    goto :goto_1

    .line 300
    :cond_1
    sget v6, Lcom/android/settings/vpn2/LegacyVpnPreference;->d:I

    invoke-virtual {v5, v6}, Lcom/android/settings/vpn2/LegacyVpnPreference;->b(I)V

    .line 302
    :goto_1
    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$a;->f:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/settings/vpn2/LegacyVpnPreference;->a(Z)V

    .line 303
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/LegacyVpnInfo;

    .line 308
    new-instance v5, Lcom/android/internal/net/VpnProfile;

    iget-object v6, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 309
    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$a;->g:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v6, v5, v3}, Lcom/android/settings/vpn2/VpnSettings;->a(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v5

    .line 310
    iget v6, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v5, v6}, Lcom/android/settings/vpn2/LegacyVpnPreference;->b(I)V

    .line 311
    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$a;->f:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/android/settings/vpn2/LegacyVpnPreference;->a(Z)V

    .line 312
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 316
    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn2/b;

    .line 317
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$a;->g:Lcom/android/settings/vpn2/VpnSettings;

    .line 1459
    iget-object v4, v3, Lcom/android/settings/vpn2/VpnSettings;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/vpn2/AppPreference;

    if-nez v4, :cond_6

    .line 1461
    new-instance v4, Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v2, Lcom/android/settings/vpn2/b;->a:I

    iget-object v7, v2, Lcom/android/settings/vpn2/b;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/vpn2/AppPreference;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1462
    iget-object v5, v3, Lcom/android/settings/vpn2/VpnSettings;->e:Lcom/android/settings/widget/GearPreference$a;

    invoke-virtual {v4, v5}, Lcom/android/settings/vpn2/AppPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    .line 1463
    invoke-virtual {v4, v3}, Lcom/android/settings/vpn2/AppPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1464
    iget-object v3, v3, Lcom/android/settings/vpn2/VpnSettings;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_6
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$a;->d:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x3

    .line 319
    invoke-virtual {v4, v3}, Lcom/android/settings/vpn2/AppPreference;->b(I)V

    goto :goto_5

    .line 321
    :cond_7
    sget v3, Lcom/android/settings/vpn2/AppPreference;->a:I

    invoke-virtual {v4, v3}, Lcom/android/settings/vpn2/AppPreference;->b(I)V

    .line 323
    :goto_5
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$a;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/android/settings/vpn2/AppPreference;->a(Z)V

    .line 324
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 328
    :cond_8
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$a;->g:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/VpnSettings;->a(Ljava/util/Collection;)V

    return-void
.end method
