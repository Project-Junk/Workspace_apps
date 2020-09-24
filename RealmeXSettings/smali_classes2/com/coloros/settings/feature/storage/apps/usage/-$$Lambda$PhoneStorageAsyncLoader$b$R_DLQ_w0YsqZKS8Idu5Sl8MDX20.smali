.class public final synthetic Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$R_DLQ_w0YsqZKS8Idu5Sl8MDX20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$R_DLQ_w0YsqZKS8Idu5Sl8MDX20;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$R_DLQ_w0YsqZKS8Idu5Sl8MDX20;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$R_DLQ_w0YsqZKS8Idu5Sl8MDX20;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$R_DLQ_w0YsqZKS8Idu5Sl8MDX20;->INSTANCE:Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$R_DLQ_w0YsqZKS8Idu5Sl8MDX20;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->lambda$R_DLQ_w0YsqZKS8Idu5Sl8MDX20(Ljava/util/concurrent/CompletableFuture;)J

    move-result-wide v0

    return-wide v0
.end method
