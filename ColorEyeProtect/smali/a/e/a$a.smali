.class public final La/e/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/d/b/e;)V
    .locals 0

    invoke-direct {p0}, La/e/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)La/e/a;
    .locals 0

    new-instance p0, La/e/a;

    invoke-direct {p0, p1, p2, p3}, La/e/a;-><init>(III)V

    return-object p0
.end method
