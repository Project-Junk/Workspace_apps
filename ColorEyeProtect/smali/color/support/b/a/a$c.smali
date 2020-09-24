.class Lcolor/support/b/a/a$c;
.super Lcolor/support/b/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcolor/support/b/a/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
