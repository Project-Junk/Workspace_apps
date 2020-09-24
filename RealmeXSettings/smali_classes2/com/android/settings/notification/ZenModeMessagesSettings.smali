.class public Lcom/android/settings/notification/ZenModeMessagesSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeMessagesSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/android/settings/notification/ZenModeMessagesSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeMessagesSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeMessagesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 4
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

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v1, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModePriorityMessagesPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;

    const/4 v2, 0x4

    const-string v3, "zen_mode_starred_contacts_messages"

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;

    const v2, 0x7f121b3c

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lcom/android/settings/notification/ZenModeMessagesSettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

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

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeMessagesSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeMessagesSettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

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

    const v0, 0x7f150155

    return v0
.end method
