.class public final synthetic Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$HeVbmx6rXVXb9sEUaNqxTagPVng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;

.field private final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$HeVbmx6rXVXb9sEUaNqxTagPVng;->f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$HeVbmx6rXVXb9sEUaNqxTagPVng;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$HeVbmx6rXVXb9sEUaNqxTagPVng;->f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$HeVbmx6rXVXb9sEUaNqxTagPVng;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->lambda$HeVbmx6rXVXb9sEUaNqxTagPVng(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Ljava/io/File;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
