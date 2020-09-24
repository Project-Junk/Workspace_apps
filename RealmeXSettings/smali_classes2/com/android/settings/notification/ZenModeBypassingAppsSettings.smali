.class public Lcom/android/settings/notification/ZenModeBypassingAppsSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeBypassingAppsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/android/settings/notification/ZenModeBypassingAppsSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeBypassingAppsSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeBypassingAppsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    const-string v0, "ZenBypassingApps"

    .line 39
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeBypassingAppsSettings;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Lcom/android/settings/notification/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/u;-><init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, v0, v0}, Lcom/android/settings/notification/ZenModeBypassingAppsSettings;->a(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ZenBypassingApps"

    return-object v0
.end method

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

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBypassingAppsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-static {p1, v0, p0}, Lcom/android/settings/notification/ZenModeBypassingAppsSettings;->a(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x634

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150150

    return v0
.end method
