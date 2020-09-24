.class public final synthetic Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$AOrgQyp1sDz2iHPFh289uzxi4qo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$AOrgQyp1sDz2iHPFh289uzxi4qo;->f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$AOrgQyp1sDz2iHPFh289uzxi4qo;->f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->lambda$AOrgQyp1sDz2iHPFh289uzxi4qo(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;Landroid/content/pm/PackageInfo;)V

    return-void
.end method
