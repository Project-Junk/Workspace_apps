.class public final Lb/a/au;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lb/a/a/m;

.field private static final b:Lb/a/af;

.field private static final c:Lb/a/af;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/a/a/m;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/au;->a:Lb/a/a/m;

    new-instance v0, Lb/a/af;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/af;-><init>(Z)V

    sput-object v0, Lb/a/au;->b:Lb/a/af;

    new-instance v0, Lb/a/af;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb/a/af;-><init>(Z)V

    sput-object v0, Lb/a/au;->c:Lb/a/af;

    return-void
.end method

.method public static final synthetic a()Lb/a/a/m;
    .locals 1

    sget-object v0, Lb/a/au;->a:Lb/a/a/m;

    return-object v0
.end method

.method public static final synthetic b()Lb/a/af;
    .locals 1

    sget-object v0, Lb/a/au;->c:Lb/a/af;

    return-object v0
.end method

.method public static final synthetic c()Lb/a/af;
    .locals 1

    sget-object v0, Lb/a/au;->b:Lb/a/af;

    return-object v0
.end method
