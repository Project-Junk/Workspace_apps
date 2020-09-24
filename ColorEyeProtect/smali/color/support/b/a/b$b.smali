.class Lcolor/support/b/a/b$b;
.super Lcolor/support/b/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcolor/support/b/a/b$a;-><init>()V

    return-void
.end method
