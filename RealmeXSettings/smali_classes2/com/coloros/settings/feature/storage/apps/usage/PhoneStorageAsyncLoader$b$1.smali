.class final Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b$1;
.super Ljava/lang/Object;
.source "PhoneStorageAsyncLoader.java"

# interfaces
.implements Lcom/coloros/settings/feature/storage/apps/usage/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b$1;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "storage_is_full"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b$1;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 577
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b$1;->c()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 582
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b$1;->c()V

    return-void
.end method
