.class public Lcolor/support/b/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/b/a/b$c;,
        Lcolor/support/b/a/b$b;,
        Lcolor/support/b/a/b$a;,
        Lcolor/support/b/a/b$d;
    }
.end annotation


# static fields
.field static final a:Lcolor/support/b/a/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcolor/support/b/a/b$c;

    invoke-direct {v0}, Lcolor/support/b/a/b$c;-><init>()V

    :goto_0
    sput-object v0, Lcolor/support/b/a/b;->a:Lcolor/support/b/a/b$d;

    goto :goto_1

    :cond_0
    new-instance v0, Lcolor/support/b/a/b$a;

    invoke-direct {v0}, Lcolor/support/b/a/b$a;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 1

    sget-object v0, Lcolor/support/b/a/b;->a:Lcolor/support/b/a/b$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p0

    invoke-interface {v0, p0}, Lcolor/support/b/a/b$d;->b(I)Z

    move-result p0

    return p0
.end method
