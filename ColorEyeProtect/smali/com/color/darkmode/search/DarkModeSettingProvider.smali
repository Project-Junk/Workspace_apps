.class public Lcom/color/darkmode/search/DarkModeSettingProvider;
.super Landroid/provider/SearchIndexablesProvider;


# static fields
.field private static INDEXABLE_RES_DATA:[Landroid/provider/SearchIndexableResource; = null

.field private static INDEXABLE_SCREEN_TITLE:[[I = null

.field private static INDEXABLE_TARGET_ACTION:[Ljava/lang/String; = null

.field private static INDEXABLE_TARGET_CLASS:[Ljava/lang/String; = null

.field private static NON_INDEXABLE_KEYS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.color.eyeprotect"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [[I

    new-array v2, v0, [I

    const/4 v3, 0x0

    const v4, 0x7f0f0043

    aput v4, v2, v3

    aput-object v2, v1, v3

    sput-object v1, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_SCREEN_TITLE:[[I

    const-string v1, "com.color.darkmode.settings"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_TARGET_ACTION:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-class v2, Lcom/color/darkmode/ui/activity/DarkModeSettingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_TARGET_CLASS:[Ljava/lang/String;

    new-array v1, v0, [Landroid/provider/SearchIndexableResource;

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const v4, 0x7f120024

    const/4 v5, 0x0

    invoke-direct {v2, v0, v4, v5, v3}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v2, v1, v3

    sput-object v1, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_RES_DATA:[Landroid/provider/SearchIndexableResource;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/color/darkmode/search/DarkModeSettingProvider;->NON_INDEXABLE_KEYS:Ljava/util/ArrayList;

    sget-object v0, Lcom/color/darkmode/search/DarkModeSettingProvider;->NON_INDEXABLE_KEYS:Ljava/util/ArrayList;

    const-string v1, "preference_key_set_time_switch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/color/darkmode/search/DarkModeSettingProvider;->NON_INDEXABLE_KEYS:Ljava/util/ArrayList;

    const-string v1, "preference_key_application_manage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method

.method private static getArrayScreenTitle(Landroid/content/Context;[I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/search/DarkModeSettingProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->hasDisableFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/color/darkmode/search/DarkModeSettingProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f004a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/color/darkmode/search/DarkModeSettingProvider;->NON_INDEXABLE_KEYS:Ljava/util/ArrayList;

    const-string v0, "preference_key_enable_immediately_switch"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/color/darkmode/search/DarkModeSettingProvider;->NON_INDEXABLE_KEYS:Ljava/util/ArrayList;

    const-string v0, "preference_key_enable_immediately_switch"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    sget-object p0, Lcom/color/darkmode/search/DarkModeSettingProvider;->NON_INDEXABLE_KEYS:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/color/darkmode/search/DarkModeSettingProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v0, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->hasDisableFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_RES_DATA:[Landroid/provider/SearchIndexableResource;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_RES_DATA:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_RES_DATA:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v5, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_SCREEN_TITLE:[[I

    aget-object v5, v5, v2

    invoke-static {p0, v5}, Lcom/color/darkmode/search/DarkModeSettingProvider;->getArrayScreenTitle(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_RES_DATA:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_TARGET_ACTION:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "com.color.eyeprotect"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/color/darkmode/search/DarkModeSettingProvider;->INDEXABLE_TARGET_CLASS:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
