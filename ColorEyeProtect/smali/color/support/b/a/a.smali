.class public Lcolor/support/b/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/b/a/a$c;,
        Lcolor/support/b/a/a$b;,
        Lcolor/support/b/a/a$a;,
        Lcolor/support/b/a/a$d;
    }
.end annotation


# static fields
.field static final a:Lcolor/support/b/a/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Lcolor/support/b/a/a$c;

    invoke-direct {v0}, Lcolor/support/b/a/a$c;-><init>()V

    :goto_0
    sput-object v0, Lcolor/support/b/a/a;->a:Lcolor/support/b/a/a$d;

    goto :goto_1

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Lcolor/support/b/a/a$b;

    invoke-direct {v0}, Lcolor/support/b/a/a$b;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcolor/support/b/a/a$a;

    invoke-direct {v0}, Lcolor/support/b/a/a$a;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    sget-object v0, Lcolor/support/b/a/a;->a:Lcolor/support/b/a/a$d;

    invoke-interface {v0, p0}, Lcolor/support/b/a/a$d;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Lcolor/support/b/a/a;->a:Lcolor/support/b/a/a$d;

    invoke-interface {v0, p0, p1}, Lcolor/support/b/a/a$d;->a(Landroid/view/View;I)V

    return-void
.end method
