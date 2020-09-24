.class public Lcom/android/settings/applications/defaultapps/AutofillPicker;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutofillPicker.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/android/settings/applications/defaultapps/AutofillPicker$1;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/AutofillPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/defaultapps/AutofillPicker;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/AutofillPicker;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [Lcom/android/settingslib/core/a;

    new-instance v1, Lcom/android/settings/applications/defaultapps/b;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/b;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/applications/defaultapps/c;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/c;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    aput-object v1, v0, p0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AutofillPicker"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 54
    invoke-static {p1}, Lcom/android/settings/applications/defaultapps/AutofillPicker;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x318

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150084

    return v0
.end method
