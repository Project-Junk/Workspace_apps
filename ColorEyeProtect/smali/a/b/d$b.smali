.class public final La/b/d$b;
.super Ljava/lang/Object;

# interfaces
.implements La/b/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b/f$c<",
        "La/b/d;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:La/b/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b/d$b;

    invoke-direct {v0}, La/b/d$b;-><init>()V

    sput-object v0, La/b/d$b;->a:La/b/d$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
