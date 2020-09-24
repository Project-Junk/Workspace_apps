.class public final Lb/a/bf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/bf$a;
    }
.end annotation


# static fields
.field public static final a:Lb/a/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/p<",
            "Lb/a/bf$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb/a/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/a/bf;

    invoke-direct {v0}, Lb/a/bf;-><init>()V

    sput-object v0, Lb/a/bf;->b:Lb/a/bf;

    new-instance v0, Lb/a/a/p;

    sget-object v1, Lb/a/bf$b;->a:Lb/a/bf$b;

    check-cast v1, La/d/a/a;

    invoke-direct {v0, v1}, Lb/a/a/p;-><init>(La/d/a/a;)V

    sput-object v0, Lb/a/bf;->a:Lb/a/a/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
