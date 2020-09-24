.class public final Lcolor/support/v4/view/c;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v4/view/c$c;,
        Lcolor/support/v4/view/c$b;,
        Lcolor/support/v4/view/c$a;,
        Lcolor/support/v4/view/c$d;
    }
.end annotation


# static fields
.field static final a:Lcolor/support/v4/view/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 169
    new-instance v0, Lcolor/support/v4/view/c$c;

    invoke-direct {v0}, Lcolor/support/v4/view/c$c;-><init>()V

    sput-object v0, Lcolor/support/v4/view/c;->a:Lcolor/support/v4/view/c$d;

    return-void

    .line 171
    :cond_0
    new-instance v0, Lcolor/support/v4/view/c$a;

    invoke-direct {v0}, Lcolor/support/v4/view/c$a;-><init>()V

    sput-object v0, Lcolor/support/v4/view/c;->a:Lcolor/support/v4/view/c$d;

    return-void
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 194
    sget-object v0, Lcolor/support/v4/view/c;->a:Lcolor/support/v4/view/c$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p0

    invoke-interface {v0, p0}, Lcolor/support/v4/view/c$d;->b(I)Z

    move-result p0

    return p0
.end method
