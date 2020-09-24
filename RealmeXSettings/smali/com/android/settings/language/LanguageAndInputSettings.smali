.class public Lcom/android/settings/language/LanguageAndInputSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LanguageAndInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/language/LanguageAndInputSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    sget-object v0, Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$1ZSI2X-Q8xL3lfemSYM_UuA_tlE;->INSTANCE:Lcom/android/settings/language/-$$Lambda$LanguageAndInputSettings$1ZSI2X-Q8xL3lfemSYM_UuA_tlE;

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    .line 164
    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$1;

    invoke-direct {v0}, Lcom/android/settings/language/LanguageAndInputSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 1

    .line 162
    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettings$a;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings$a;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lcom/android/settings/language/a;

    invoke-direct {v1, p0}, Lcom/android/settings/language/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/android/settings/inputmethod/e;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/e;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v2, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v3, "keyboards_category"

    invoke-direct {p1, p0, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/android/settingslib/core/a;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    .line 107
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 106
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance p1, Lcom/android/settings/language/TtsPreferenceController;

    const-string/jumbo v2, "tts_settings_summary"

    invoke-direct {p1, p0, v2}, Lcom/android/settings/language/TtsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v2, Lcom/android/settings/language/PointerSpeedController;

    invoke-direct {v2, p0}, Lcom/android/settings/language/PointerSpeedController;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v4, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v6, "pointer_and_tts_category"

    invoke-direct {v4, p0, v6}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v3, v3, [Lcom/android/settingslib/core/a;

    aput-object v2, v3, v5

    aput-object p1, v3, v1

    .line 118
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 117
    invoke-virtual {v4, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 116
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance p1, Lcom/android/settings/inputmethod/b;

    invoke-direct {p1, p0}, Lcom/android/settings/inputmethod/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0}, Lcom/android/settings/language/LanguageAndInputSettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$1ZSI2X-Q8xL3lfemSYM_UuA_tlE(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettings;->a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "LangAndInputSettings"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
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

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/language/LanguageAndInputSettings;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ee

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500af

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f120be3

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
