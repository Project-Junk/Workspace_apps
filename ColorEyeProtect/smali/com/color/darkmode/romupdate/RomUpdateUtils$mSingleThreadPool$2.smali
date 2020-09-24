.class final Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;
.super La/d/b/h;

# interfaces
.implements La/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/darkmode/romupdate/RomUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/d/b/h;",
        "La/d/a/a<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;

    invoke-direct {v0}, Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;-><init>()V

    sput-object v0, Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;->INSTANCE:Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/color/darkmode/romupdate/RomUpdateUtils$mSingleThreadPool$2;->invoke()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/concurrent/ExecutorService;
    .locals 0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
