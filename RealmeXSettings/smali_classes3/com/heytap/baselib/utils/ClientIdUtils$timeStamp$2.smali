.class final Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;
.super La/d/b/e;
.source "ClientIdUtils.kt"

# interfaces
.implements La/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/baselib/utils/ClientIdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/d/b/e;",
        "La/d/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;

    invoke-direct {v0}, Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;-><init>()V

    sput-object v0, Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;->INSTANCE:Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/heytap/baselib/utils/ClientIdUtils$timeStamp$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
