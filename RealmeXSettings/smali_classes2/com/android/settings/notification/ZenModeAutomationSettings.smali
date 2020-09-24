.class public Lcom/android/settings/notification/ZenModeAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field protected final a:Lcom/android/settings/utils/ManagedServiceSettings$a;

.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/String;

.field private d:[Z

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    .line 50
    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->c()Lcom/android/settings/utils/ManagedServiceSettings$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->a:Lcom/android/settings/utils/ManagedServiceSettings$a;

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->e:I

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settings/utils/g;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v1, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p2, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/notification/ZenModeAutomaticRulesPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Z
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->d:[Z

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, v0, v0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->c:[Ljava/lang/String;

    return-object p0
.end method

.method protected static c()Lcom/android/settings/utils/ManagedServiceSettings$a;
    .locals 2

    .line 93
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$a$a;-><init>()V

    const-string v1, "ZenModeSettings"

    .line 1272
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->a:Ljava/lang/String;

    const-string v1, "android.service.notification.ConditionProviderService"

    .line 1282
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->c:Ljava/lang/String;

    const-string v1, "android.app.action.AUTOMATIC_ZEN_RULE"

    .line 1287
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->i:Ljava/lang/String;

    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    .line 1292
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->d:Ljava/lang/String;

    const-string v1, "condition provider"

    .line 1297
    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->e:Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->a()Lcom/android/settings/utils/ManagedServiceSettings$a;

    move-result-object v0

    return-object v0
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

    .line 67
    new-instance v0, Lcom/android/settings/utils/g;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->a:Lcom/android/settings/utils/ManagedServiceSettings$a;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/g;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$a;)V

    .line 68
    invoke-virtual {v0}, Lcom/android/settings/utils/g;->a()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8e

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15014e

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onAttach(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "DELETE_RULE"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->q:Lcom/android/settings/notification/w;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/w;->c(Ljava/lang/String;)Z

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f121b0f

    .line 105
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->q:Lcom/android/settings/notification/w;

    invoke-virtual {p1}, Lcom/android/settings/notification/w;->f()[Ljava/util/Map$Entry;

    move-result-object p1

    .line 114
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->b:[Ljava/lang/CharSequence;

    .line 115
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->c:[Ljava/lang/String;

    .line 116
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->d:[Z

    const/4 v0, 0x0

    .line 117
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->b:[Ljava/lang/CharSequence;

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 119
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->c:[Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->k:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121b0f

    .line 122
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->b:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settings/notification/ZenModeAutomationSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$2;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V

    .line 123
    invoke-virtual {v0, v2, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f121b71

    new-instance v3, Lcom/android/settings/notification/ZenModeAutomationSettings$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;[Ljava/util/Map$Entry;)V

    .line 131
    invoke-virtual {v0, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return v1
.end method
