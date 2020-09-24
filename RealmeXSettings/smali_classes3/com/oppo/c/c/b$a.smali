.class final Lcom/oppo/c/c/b$a;
.super Ljava/lang/Object;
.source "StatIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/oppo/c/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/oppo/c/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oppo/c/c/b;-><init>(B)V

    sput-object v0, Lcom/oppo/c/c/b$a;->a:Lcom/oppo/c/c/b;

    return-void
.end method

.method static synthetic a()Lcom/oppo/c/c/b;
    .locals 1

    .line 19
    sget-object v0, Lcom/oppo/c/c/b$a;->a:Lcom/oppo/c/c/b;

    return-object v0
.end method
