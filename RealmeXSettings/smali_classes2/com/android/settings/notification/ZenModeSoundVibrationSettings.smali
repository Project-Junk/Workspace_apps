.class public Lcom/android/settings/notification/ZenModeSoundVibrationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeSoundVibrationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/settings/notification/ZenModeSoundVibrationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeSoundVibrationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeSoundVibrationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v1, Lcom/android/settings/notification/ZenModeCallsPreferenceController;

    const-string v2, "zen_mode_calls_settings"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/ZenModeCallsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;

    const-string v2, "zen_mode_messages_settings"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/ZenModeMessagesPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;

    const-string v2, "zen_mode_alarms"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/android/settings/notification/ZenModeMediaPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/android/settings/notification/ZenModeSystemPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeSystemPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/android/settings/notification/ZenModeRemindersPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeRemindersPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/android/settings/notification/ZenModeEventsPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeEventsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;

    const v2, 0x7f121bc1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lcom/android/settings/notification/ZenModeSoundVibrationSettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSoundVibrationSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeSoundVibrationSettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15015b

    return v0
.end method
