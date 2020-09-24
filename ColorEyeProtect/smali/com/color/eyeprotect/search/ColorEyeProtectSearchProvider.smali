.class public Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;
.super Landroid/provider/SearchIndexablesProvider;


# static fields
.field private static a:[[I

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:[Landroid/provider/SearchIndexableResource;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [[I

    new-array v2, v0, [I

    const/4 v3, 0x0

    const v4, 0x7f0f0077

    aput v4, v2, v3

    aput-object v2, v1, v3

    sput-object v1, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->a:[[I

    const-string v1, "com.color.eyeprotect.action.enter"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->b:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-class v2, Lcom/color/eyeprotect/ui/activity/ProtectEyesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->c:[Ljava/lang/String;

    new-array v1, v0, [Landroid/provider/SearchIndexableResource;

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const v4, 0x7f12000c

    const/4 v5, 0x0

    const v6, 0x7f070206

    invoke-direct {v2, v0, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v2, v1, v3

    sput-object v1, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->d:[Landroid/provider/SearchIndexableResource;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->e:Ljava/util/ArrayList;

    sget-object v0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->e:Ljava/util/ArrayList;

    const-string v1, "key_normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->e:Ljava/util/ArrayList;

    const-string v1, "key_saturation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "open_protect_eye_time_raw"

    const-string v1, "close_protect_eye_time_raw"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;[I)Ljava/lang/String;
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

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "enable"

    goto :goto_0

    :cond_0
    const-string p0, "disable"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1

    const p0, 0x7f0f0077

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    aput-object p0, p2, v0

    sget-object p0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->a:[[I

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p1, p0}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->a(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    aput-object p0, p2, p1

    sget-object p0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->d:[Landroid/provider/SearchIndexableResource;

    aget-object p0, p0, v0

    iget p0, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 p1, 0x8

    aput-object p0, p2, p1

    sget-object p0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->b:[Ljava/lang/String;

    aget-object p0, p0, v0

    const/16 p1, 0x9

    aput-object p0, p2, p1

    const-string p0, "com.color.eyeprotect"

    const/16 p1, 0xa

    aput-object p0, p2, p1

    sget-object p0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->c:[Ljava/lang/String;

    aget-object p0, p0, v0

    const/16 p1, 0xb

    aput-object p0, p2, p1

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 p1, 0xd

    aput-object p0, p2, p1

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "key_group_saturation"

    aput-object v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;)Z

    move-result p0

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v3, "ColorEyeProtectSearchProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFixedTimeSettingsOpen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->f:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, p0}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-virtual {p1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f007f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->f:[Ljava/lang/String;

    aget-object v2, v2, v3

    const/16 v6, 0xc

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->a(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0f004f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->a(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->d:[Landroid/provider/SearchIndexableResource;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->d:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->d:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v5, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->a:[[I

    aget-object v5, v5, v2

    invoke-static {p0, v5}, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->a(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->d:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "com.color.eyeprotect"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/color/eyeprotect/search/ColorEyeProtectSearchProvider;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
