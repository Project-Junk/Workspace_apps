.class Lcolor/support/b/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcolor/support/b/a/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    and-int/lit16 p0, p1, 0xc0

    if-eqz p0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    and-int/lit8 p0, p1, 0x30

    if-eqz p0, :cond_1

    or-int/lit8 p1, p1, 0x2

    :cond_1
    and-int/lit16 p0, p1, 0xf7

    return p0
.end method

.method public b(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/b/a/b$a;->a(I)I

    move-result p0

    and-int/lit16 p0, p0, 0xf7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
