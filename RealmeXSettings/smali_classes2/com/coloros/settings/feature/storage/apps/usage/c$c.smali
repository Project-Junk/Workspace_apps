.class public final Lcom/coloros/settings/feature/storage/apps/usage/c$c;
.super Ljava/lang/Enum;
.source "StorageNoSpaceAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/storage/apps/usage/c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [I

    sget v1, Lcom/coloros/settings/feature/storage/apps/usage/c$c;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/coloros/settings/feature/storage/apps/usage/c$c;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/usage/c$c;->c:[I

    return-void
.end method
