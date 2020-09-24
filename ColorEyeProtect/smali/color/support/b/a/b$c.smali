.class Lcolor/support/b/a/b$c;
.super Lcolor/support/b/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcolor/support/b/a/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    invoke-static {p1}, Lcolor/support/b/a/c;->a(I)I

    move-result p0

    return p0
.end method

.method public b(I)Z
    .locals 0

    invoke-static {p1}, Lcolor/support/b/a/c;->b(I)Z

    move-result p0

    return p0
.end method
