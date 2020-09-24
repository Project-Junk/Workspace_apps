.class public Lcom/android/settings/notification/AppNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "AppNotificationSettings.java"


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:[Ljava/lang/String;

.field private static final y:Z

.field private static z:Ljava/lang/String;


# instance fields
.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "AppNotificationSettings"

    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/notification/AppNotificationSettings;->y:Z

    const-string v1, "categories"

    .line 51
    sput-object v1, Lcom/android/settings/notification/AppNotificationSettings;->z:Ljava/lang/String;

    const-string v1, "app_advanced"

    .line 52
    sput-object v1, Lcom/android/settings/notification/AppNotificationSettings;->A:Ljava/lang/String;

    const-string v1, "badge"

    .line 53
    sput-object v1, Lcom/android/settings/notification/AppNotificationSettings;->B:Ljava/lang/String;

    const-string v1, "app_link"

    .line 54
    sput-object v1, Lcom/android/settings/notification/AppNotificationSettings;->C:Ljava/lang/String;

    const-string v1, "bubble_link_pref"

    .line 55
    sput-object v1, Lcom/android/settings/notification/AppNotificationSettings;->D:Ljava/lang/String;

    .line 56
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->B:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->C:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->D:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    .line 232
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->G:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings;->F:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/notification/AppNotificationSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings;->F:Ljava/util/List;

    return-object p1
.end method

.method private synthetic a(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 6

    .line 221
    check-cast p2, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 222
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 223
    iget-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings;->o:Lcom/android/settings/notification/k$a;

    iget-object p2, p2, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->o:Lcom/android/settings/notification/k$a;

    iget v1, v1, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p2, v1, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    if-eqz p1, :cond_3

    .line 1252
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceGroup;

    if-eqz p2, :cond_3

    .line 1255
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1259
    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 1260
    instance-of v4, v3, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v4, :cond_0

    .line 1261
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1264
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 1265
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 1268
    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    .line 1269
    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->x:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1270
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1272
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1273
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/settings/notification/AppNotificationSettings;->a(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroidx/preference/Preference;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return v0
.end method

.method static synthetic b(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/Comparator;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings;->G:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 9

    .line 2162
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2163
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 2164
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2168
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2169
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120eb1

    .line 2170
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->setTitle(I)V

    .line 2171
    sget-object v2, Lcom/android/settings/notification/AppNotificationSettings;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 2173
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2175
    new-instance v2, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120e72

    .line 2176
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 2177
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2178
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 2186
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 2187
    new-instance v3, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 2188
    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 2189
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 2190
    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings;->s:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2191
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2192
    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings;->F:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_4

    const v4, 0x7f120eb2

    .line 2193
    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceCategory;->setTitle(I)V

    .line 2195
    :cond_4
    sget-object v4, Lcom/android/settings/notification/AppNotificationSettings;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    goto :goto_2

    .line 2197
    :cond_5
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 2198
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 2215
    new-instance v5, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    const v6, 0x7f120efb

    .line 2216
    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedSwitchPreference;->setTitle(I)V

    .line 2217
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationSettings;->j:Lcom/android/settingslib/g$a;

    if-nez v6, :cond_6

    .line 2218
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->a(Landroid/app/NotificationChannelGroup;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_1

    :cond_6
    move v6, v1

    .line 2217
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 2219
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v6

    xor-int/2addr v4, v6

    invoke-virtual {v5, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 2220
    new-instance v4, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$F_nPtpPoni2b1QVOPPkYT2cljrY;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$F_nPtpPoni2b1QVOPPkYT2cljrY;-><init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v5, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 2229
    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 2201
    :goto_2
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2202
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    .line 2203
    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings;->x:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2204
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_3

    .line 2206
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 2207
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v8

    invoke-virtual {p0, v3, v7, v8}, Lcom/android/settings/notification/AppNotificationSettings;->a(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroidx/preference/Preference;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2181
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/AppNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase$a;->a()V

    return-void
.end method

.method public static synthetic lambda$F_nPtpPoni2b1QVOPPkYT2cljrY(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AppNotificationSettings;->a(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AppNotificationSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/d;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/d;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/BadgePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/BadgePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/AllowSoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/AllowSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/MinImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/MinImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/HighImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/HighImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/SoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settings/notification/SoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/LightsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/LightsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/VibrationPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/VibrationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/VisibilityPreferenceController;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/VisibilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DndPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/DndPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/b;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/h;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/n;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/g;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/g;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/f;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->b:Lcom/android/settings/notification/k;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/f;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15001c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/notification/NotificationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->p:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 71
    sget-object v0, Lcom/android/settings/notification/AppNotificationSettings;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 72
    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->A:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 74
    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->E:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 75
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 76
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 87
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 89
    iget v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->f:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->i:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->p:Z

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AppNotificationSettings$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/l;

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->o:Lcom/android/settings/notification/k$a;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->n:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->k:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings;->j:Lcom/android/settingslib/g$a;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/l;->a(Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/g$a;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/l;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->b_()V

    return-void

    :cond_3
    :goto_1
    const-string v0, "AppNotificationSettings"

    const-string v1, "Missing package or uid or packageinfo"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->finish()V

    return-void
.end method
