.class public final Lb/a/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/c/j;


# static fields
.field public static final a:Lb/a/c/h;

.field private static final b:Lb/a/c/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/c/h;

    invoke-direct {v0}, Lb/a/c/h;-><init>()V

    sput-object v0, Lb/a/c/h;->a:Lb/a/c/h;

    sget-object v0, Lb/a/c/l;->a:Lb/a/c/l;

    sput-object v0, Lb/a/c/h;->b:Lb/a/c/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Lb/a/c/l;
    .locals 0

    sget-object p0, Lb/a/c/h;->b:Lb/a/c/l;

    return-object p0
.end method
