.class public Lcom/android/settings/notification/ZenModeEventRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeEventRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeEventRuleSettings$a;
    }
.end annotation


# static fields
.field private static final v:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private r:Landroidx/preference/DropDownPreference;

.field private s:Landroidx/preference/DropDownPreference;

.field private t:Landroid/service/notification/ZenModeConfig$EventInfo;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    new-instance v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->v:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    return-object p0
.end method

.method private static a(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->b(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/android/settings/notification/ZenModeEventRuleSettings$a;)Ljava/lang/String;
    .locals 2

    .line 242
    iget v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->b:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->c:Ljava/lang/Long;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "calendar_displayName"

    .line 207
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 218
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 219
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 1232
    new-instance v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;

    invoke-direct {v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;-><init>()V

    .line 1233
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->c:Ljava/lang/Long;

    .line 1234
    iput-object v3, v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->a:Ljava/lang/String;

    .line 1235
    iput v4, v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->b:I

    .line 1236
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1237
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 224
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_4
    throw p0
.end method

.method private static b(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 2

    .line 246
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$a;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 189
    invoke-static {p0, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 191
    invoke-static {v2, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 194
    :cond_1
    sget-object p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->v:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private f()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f121b1e

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    .line 103
    invoke-static {v4, v3, v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v4, :cond_0

    iget-object v3, v4, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 105
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;

    .line 106
    iget-object v5, v4, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {v4}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    .line 108
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->a:Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v4, v4, Lcom/android/settings/notification/ZenModeEventRuleSettings$a;->c:Ljava/lang/Long;

    iput-object v4, v5, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->r:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->r:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->r:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->r:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->f:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 88
    new-instance v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->g:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    .line 90
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->h:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    .line 92
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->f:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->g:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->h:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected final a(Landroid/app/AutomaticZenRule;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 63
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final c()V
    .locals 7

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->u:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "calendar"

    .line 130
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->r:Landroidx/preference/DropDownPreference;

    .line 131
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->r:Landroidx/preference/DropDownPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "reply"

    .line 145
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->s:Landroidx/preference/DropDownPreference;

    .line 146
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->s:Landroidx/preference/DropDownPreference;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/CharSequence;

    const v4, 0x7f121b20

    .line 147
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f121b22

    .line 148
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const v4, 0x7f121b21

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 146
    invoke-virtual {v1, v3}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->s:Landroidx/preference/DropDownPreference;

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 151
    invoke-virtual {v1, v2}, Landroidx/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->s:Landroidx/preference/DropDownPreference;

    new-instance v1, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->f()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->d()V

    return-void
.end method

.method protected final d()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->r:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->b(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->r:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->b(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->s:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->s:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->t:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x92

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150154

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->u:Z

    if-nez v0, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->f()V

    :cond_1
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->u:Z

    return-void
.end method
