.class final synthetic Lcom/coloros/settings/feature/storage/apps/usage/c$4;
.super Ljava/lang/Object;
.source "StorageNoSpaceAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/coloros/settings/feature/storage/apps/usage/c$b;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/usage/c$4;->a:[I

    :try_start_0
    sget-object v0, Lcom/coloros/settings/feature/storage/apps/usage/c$4;->a:[I

    sget v1, Lcom/coloros/settings/feature/storage/apps/usage/c$b;->b:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
