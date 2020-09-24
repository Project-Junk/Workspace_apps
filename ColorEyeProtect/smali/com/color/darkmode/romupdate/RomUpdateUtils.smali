.class public final Lcom/color/darkmode/romupdate/RomUpdateUtils;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $$delegatedProperties:[La/f/h;

.field public static final ACTION:Ljava/lang/String; = "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field public static final COLUMN_NAME_XML:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final HIDDEN_APP_LIST:Ljava/lang/String; = "sys_darkmode_hidden_list"

.field public static final INSTANCE:Lcom/color/darkmode/romupdate/RomUpdateUtils;

.field public static final OPEN_APP_LIST:Ljava/lang/String; = "sys_darkmode_managed_list"

.field public static final ROM_UPDATE_CONFIG_SUCCESS_EXTRA:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final mSingleThreadPool$delegate:La/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [La/f/h;

    new-instance v1, La/d/b/m;

    const-class v2, Lcom/color/darkmode/romupdate/RomUpdateUtils;

    invoke-static {v2}, La/d/b/n;->a(Ljava/lang/Class;)La/f/c;

    move-result-object v2

    const-string v3, "mSingleThreadPool"

    const-string v4, "getMSingleThreadPool()Ljava/util/concurrent/ExecutorService;"

    invoke-direct {v1, v2, v3, v4}, La/d/b/m;-><init>(La/f/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, La/d/b/n;->a(La/d/b/l;)La/f/j;

    move-result-object v1

    check-cast v1, La/f/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/color/darkmode/romupdate/RomUpdateUtils;->$$delegatedProperties:[La/f/h;

    new-instance v0, Lcom/color/darkmode/romupdate/RomUpdateUtils;

    invoke-direct {v0}, Lcom/color/darkmode/romupdate/RomUpdateUtils;-><init>()V

    sput-object v0, Lcom/color/darkmode/romupdate/RomUpdateUtils;->INSTANCE:Lcom/color/darkmode/romupdate/RomUpdateUtils;

    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/color/darkmode/romupdate/RomUpdateUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;->INSTANCE:Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;

    check-cast v0, La/d/a/a;

    invoke-static {v0}, La/f;->a(La/d/a/a;)La/e;

    move-result-object v0

    sput-object v0, Lcom/color/darkmode/romupdate/RomUpdateUtils;->mSingleThreadPool$delegate:La/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getMSingleThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object p0, Lcom/color/darkmode/romupdate/RomUpdateUtils;->mSingleThreadPool$delegate:La/e;

    sget-object v0, Lcom/color/darkmode/romupdate/RomUpdateUtils;->$$delegatedProperties:[La/f/h;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, La/e;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final getCONTENT_URI()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/color/darkmode/romupdate/RomUpdateUtils;->CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public final hideApp(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/darkmode/romupdate/RomUpdateUtils;->getMSingleThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/color/darkmode/romupdate/RomUpdateUtils$hideApp$1;

    invoke-direct {v0, p1}, Lcom/color/darkmode/romupdate/RomUpdateUtils$hideApp$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateData(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/darkmode/romupdate/RomUpdateUtils;->getMSingleThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/color/darkmode/romupdate/RomUpdateUtils$updateData$1;

    invoke-direct {v0, p1}, Lcom/color/darkmode/romupdate/RomUpdateUtils$updateData$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
