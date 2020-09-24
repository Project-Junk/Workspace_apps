.class public final Lcom/android/settings/enterprise/r;
.super Lcom/android/settingslib/core/a;
.source "EnterpriseSetDefaultAppsListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private final b:Lcom/android/settings/SettingsPreferenceFragment;

.field private final c:Lcom/android/settings/applications/q;

.field private final d:Lcom/android/settings/enterprise/o;

.field private final e:Lcom/android/settings/users/h;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EnumMap<",
            "Lcom/android/settings/applications/s;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/pm/PackageManager;)V
    .locals 9

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/r;->f:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/r;->g:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lcom/android/settings/enterprise/r;->a:Landroid/content/pm/PackageManager;

    .line 66
    iput-object p2, p0, Lcom/android/settings/enterprise/r;->b:Lcom/android/settings/SettingsPreferenceFragment;

    .line 67
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 68
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/b;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/enterprise/r;->c:Lcom/android/settings/applications/q;

    .line 69
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/enterprise/r;->d:Lcom/android/settings/enterprise/o;

    .line 70
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/b;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/r;->e:Lcom/android/settings/users/h;

    .line 1078
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/r;->f:Ljava/util/List;

    .line 1079
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/r;->g:Ljava/util/List;

    .line 1080
    iget-object p1, p0, Lcom/android/settings/enterprise/r;->e:Lcom/android/settings/users/h;

    invoke-interface {p1}, Lcom/android/settings/users/h;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    const/4 p3, 0x0

    .line 1084
    invoke-static {}, Lcom/android/settings/applications/s;->values()[Lcom/android/settings/applications/s;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move-object v4, p3

    move p3, v2

    move v3, p3

    :goto_0
    if-ge p3, v1, :cond_0

    aget-object v5, v0, p3

    .line 1085
    iget-object v6, p0, Lcom/android/settings/enterprise/r;->c:Lcom/android/settings/applications/q;

    .line 1086
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 2049
    iget-object v8, v5, Lcom/android/settings/applications/s;->h:[Landroid/content/Intent;

    .line 1086
    invoke-interface {v6, v7, v8}, Lcom/android/settings/applications/q;->a(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v6

    .line 1088
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v3, :cond_1

    .line 1093
    iget-object v3, p0, Lcom/android/settings/enterprise/r;->f:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/z;

    iget-object v4, v4, Lcom/android/settings/applications/z;->a:Landroid/content/pm/UserInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    new-instance v4, Ljava/util/EnumMap;

    const-class v3, Lcom/android/settings/applications/s;

    invoke-direct {v4, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1095
    iget-object v3, p0, Lcom/android/settings/enterprise/r;->g:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 1097
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/z;

    .line 1099
    iget-object v8, v8, Lcom/android/settings/applications/z;->b:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1101
    :cond_2
    invoke-virtual {v4, v5, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1104
    :cond_4
    new-instance p1, Lcom/android/settings/enterprise/-$$Lambda$r$Vae8XFvPbF6DncI1aeXEKUXPsD0;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/-$$Lambda$r$Vae8XFvPbF6DncI1aeXEKUXPsD0;-><init>(Lcom/android/settings/enterprise/r;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 161
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 162
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 163
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/enterprise/r;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 166
    aget-object p1, v0, v1

    return-object p1

    .line 167
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    const p2, 0x7f1201d4

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    aget-object v4, v0, v1

    aput-object v4, v2, v1

    aget-object v0, v0, v3

    aput-object v0, v2, v3

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const p2, 0x7f1201d5

    const/4 v4, 0x3

    .line 171
    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    aget-object v1, v0, v3

    aput-object v1, v4, v3

    aget-object v0, v0, v2

    aput-object v0, v4, v2

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a()V
    .locals 5

    .line 3118
    iget-object v0, p0, Lcom/android/settings/enterprise/r;->b:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3119
    iget-object v1, p0, Lcom/android/settings/enterprise/r;->b:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3123
    iget-object v2, p0, Lcom/android/settings/enterprise/r;->d:Lcom/android/settings/enterprise/o;

    invoke-interface {v2}, Lcom/android/settings/enterprise/o;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/enterprise/r;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 3124
    iget-object v2, p0, Lcom/android/settings/enterprise/r;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/enterprise/r;->a(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    return-void

    .line 3126
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/enterprise/r;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 3127
    iget-object v2, p0, Lcom/android/settings/enterprise/r;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3128
    new-instance v4, Landroidx/preference/PreferenceCategory;

    invoke-direct {v4, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 3129
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 3130
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120d1d

    .line 3131
    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_1

    :cond_1
    const v2, 0x7f121019

    .line 3133
    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceCategory;->setTitle(I)V

    .line 3135
    :goto_1
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    .line 3136
    iget-object v2, p0, Lcom/android/settings/enterprise/r;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/enterprise/r;->a(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/EnumMap<",
            "Lcom/android/settings/applications/s;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/android/settings/applications/s;->values()[Lcom/android/settings/applications/s;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 147
    invoke-virtual {p3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 148
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    new-instance v6, Landroidx/preference/Preference;

    invoke-direct {v6, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 2177
    sget-object v8, Lcom/android/settings/enterprise/r$1;->a:[I

    invoke-virtual {v4}, Lcom/android/settings/applications/s;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2196
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unknown type of default "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2193
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100014

    .line 2194
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2190
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100015

    .line 2191
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_2
    const v7, 0x7f120744

    .line 2188
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2185
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100016

    .line 2186
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_4
    const v7, 0x7f12073c

    .line 2183
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_5
    const v7, 0x7f12073b

    .line 2181
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_6
    const v7, 0x7f120739

    .line 2179
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 152
    :goto_1
    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0, p1, v5}, Lcom/android/settings/enterprise/r;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v4}, Lcom/android/settings/applications/s;->ordinal()I

    move-result v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 155
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 156
    invoke-virtual {p2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$Vae8XFvPbF6DncI1aeXEKUXPsD0(Lcom/android/settings/enterprise/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/r;->a()V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
