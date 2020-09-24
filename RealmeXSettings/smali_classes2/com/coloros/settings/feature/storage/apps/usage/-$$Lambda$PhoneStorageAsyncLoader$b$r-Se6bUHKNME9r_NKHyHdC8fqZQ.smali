.class public final synthetic Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$r-Se6bUHKNME9r_NKHyHdC8fqZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$r-Se6bUHKNME9r_NKHyHdC8fqZQ;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$b$r-Se6bUHKNME9r_NKHyHdC8fqZQ;->f$0:Ljava/util/List;

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->lambda$r-Se6bUHKNME9r_NKHyHdC8fqZQ(Ljava/util/List;Landroid/content/pm/PackageInfo;)V

    return-void
.end method
