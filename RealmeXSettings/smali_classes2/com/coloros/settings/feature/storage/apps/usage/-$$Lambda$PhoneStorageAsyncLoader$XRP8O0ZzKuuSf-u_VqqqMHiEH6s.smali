.class public final synthetic Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$XRP8O0ZzKuuSf-u_VqqqMHiEH6s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$XRP8O0ZzKuuSf-u_VqqqMHiEH6s;->f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    iput p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$XRP8O0ZzKuuSf-u_VqqqMHiEH6s;->f$1:I

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$XRP8O0ZzKuuSf-u_VqqqMHiEH6s;->f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    iget v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$XRP8O0ZzKuuSf-u_VqqqMHiEH6s;->f$1:I

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->lambda$XRP8O0ZzKuuSf-u_VqqqMHiEH6s(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;ILandroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0
.end method
