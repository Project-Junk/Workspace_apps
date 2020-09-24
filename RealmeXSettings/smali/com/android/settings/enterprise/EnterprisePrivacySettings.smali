.class public Lcom/android/settings/enterprise/EnterprisePrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "EnterprisePrivacySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;

    invoke-direct {v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Lcom/android/settings/enterprise/y;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/y;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/android/settings/enterprise/j;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/j;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/android/settings/enterprise/z;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/z;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v2, Lcom/android/settings/enterprise/n;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/n;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Lcom/android/settings/enterprise/d;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/d;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/android/settings/enterprise/e;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/e;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lcom/android/settings/enterprise/c;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/c;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Lcom/android/settings/enterprise/s;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/s;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance p1, Lcom/android/settings/enterprise/g;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance p1, Lcom/android/settings/enterprise/h;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p1, Lcom/android/settings/enterprise/x;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/x;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p1, Lcom/android/settings/enterprise/w;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/w;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p1, Lcom/android/settings/enterprise/k;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Lcom/android/settings/enterprise/l;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/l;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v2, "exposure_changes_category"

    invoke-direct {p1, p0, v2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    .line 88
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance p1, Lcom/android/settings/enterprise/t;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/t;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance p1, Lcom/android/settings/enterprise/u;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/u;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 96
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Lcom/android/settings/enterprise/o;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "EnterprisePrivacySettings"

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

    const/4 v0, 0x1

    .line 57
    invoke-static {p1, v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x274

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150099

    return v0
.end method
