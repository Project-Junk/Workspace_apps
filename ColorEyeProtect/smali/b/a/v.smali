.class public final synthetic Lb/a/v;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lb/a/u;->values()[Lb/a/u;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lb/a/v;->a:[I

    sget-object v0, Lb/a/v;->a:[I

    sget-object v1, Lb/a/u;->a:Lb/a/u;

    invoke-virtual {v1}, Lb/a/u;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lb/a/v;->a:[I

    sget-object v1, Lb/a/u;->c:Lb/a/u;

    invoke-virtual {v1}, Lb/a/u;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lb/a/v;->a:[I

    sget-object v1, Lb/a/u;->d:Lb/a/u;

    invoke-virtual {v1}, Lb/a/u;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lb/a/v;->a:[I

    sget-object v1, Lb/a/u;->b:Lb/a/u;

    invoke-virtual {v1}, Lb/a/u;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lb/a/u;->values()[Lb/a/u;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lb/a/v;->b:[I

    sget-object v0, Lb/a/v;->b:[I

    sget-object v1, Lb/a/u;->a:Lb/a/u;

    invoke-virtual {v1}, Lb/a/u;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lb/a/v;->b:[I

    sget-object v1, Lb/a/u;->c:Lb/a/u;

    invoke-virtual {v1}, Lb/a/u;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lb/a/v;->b:[I

    sget-object v1, Lb/a/u;->d:Lb/a/u;

    invoke-virtual {v1}, Lb/a/u;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lb/a/v;->b:[I

    sget-object v1, Lb/a/u;->b:Lb/a/u;

    invoke-virtual {v1}, Lb/a/u;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
